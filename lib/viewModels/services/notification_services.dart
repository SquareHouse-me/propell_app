import 'dart:developer';
import 'dart:io';
import 'dart:math' as m;

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import 'package:permission_handler/permission_handler.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NotificationServices {
  FirebaseMessaging messaging = FirebaseMessaging.instance;
  final FlutterLocalNotificationsPlugin localNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  //request permission for notification
  void requestNotificationPermission() async {
    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      announcement: true,
      badge: true,
      carPlay: true,
      criticalAlert: true,
      provisional: true,
      sound: true,
    );

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      if (kDebugMode) {
        log('user granted permission');
      }
      await Permission.notification.request();
    } else if (settings.authorizationStatus ==
        AuthorizationStatus.provisional) {
      if (kDebugMode) {
        log('user granted provisional permission');
      }
      await Permission.notification.request();
    } else {
      openAppSettings();
      if (kDebugMode) {
        log('user denied permission');
      }
    }
  }

  Future<String> getDeviceToken({int maxRetires = 3}) async {
    String? token;
    try {
      if (kIsWeb) {
        token = await messaging.getToken(
            vapidKey:
                 "BESyVhvjRzaOI3AKxMJMVOfYPNKDb5utotJ31WAl-LHzKYJZufysCW00rWvHzfVO2KQTGd8XXEOG0ohFY2GjKM0");
        log('$token getDeviceToken');

        // Save the token and the current timestamp

        SharedPreferences sp = await SharedPreferences.getInstance();
        await sp.setString('DeviceToken', token.toString());
        await sp.setString(
            'TokenTimestamp', DateTime.now().millisecondsSinceEpoch.toString());
        print("for web device token: $token");
      } else {
        token = await messaging.getToken();
        log('$token getDeviceToken');

        // Save the token and the current timestamp

        SharedPreferences sp = await SharedPreferences.getInstance();
        await sp.setString('DeviceToken', token.toString());
        await sp.setString(
            'TokenTimestamp', DateTime.now().millisecondsSinceEpoch.toString());
      }
      return token!;
    } catch (e) {
      log('Error: $e');
      print("failed to get device token");
      if (maxRetires > 0) {
        print("try after 10 sec");
        await Future.delayed(Duration(seconds: 10));
        return getDeviceToken(maxRetires: maxRetires - 1);
      } else {
        return '';
      }
    }
  }

  Future<String> isTokenRefresh() async {
    String newToken = '';

    try {
      messaging.onTokenRefresh.listen((event) async {
        newToken = event;

        SharedPreferences sp = await SharedPreferences.getInstance();
        await sp.setString('DeviceToken', newToken.toString());
        await sp.setString(
            'TokenTimestamp', DateTime.now().millisecondsSinceEpoch.toString());

        log('Token refreshed: $newToken');
      }).asFuture();

      SharedPreferences sp = await SharedPreferences.getInstance();
      if (kIsWeb) {
        // For web, use the vapidKey to fetch the token
        newToken = await messaging.getToken(
                vapidKey:
                    "BESyVhvjRzaOI3AKxMJMVOfYPNKDb5utotJ31WAl-LHzKYJZufysCW00rWvHzfVO2KQTGd8XXEOG0ohFY2GjKM0") ??
            '';
        await sp.setString('DeviceToken', newToken);
        await sp.setString(
            'TokenTimestamp', DateTime.now().millisecondsSinceEpoch.toString());
        log('Token refreshed for web: $newToken');
      } else {
        // For other platforms
        newToken = sp.getString('DeviceToken') ?? '';
      }

      return newToken;
    } catch (e) {
      log('Error during token refresh: $e');
      return '';
    }
  }

  void firebaseInit(BuildContext context) {
    FirebaseMessaging.onMessage.listen((messages) {
      print(messages.notification!.title.toString());
      if (Platform.isIOS) {
        foregroundMessage();
      }
      if (Platform.isAndroid) {
        initNotification(context: context, message: messages);
        showNotification(messages);
      }
    });
  }

  Future<void> initNotification(
      {required BuildContext context, required RemoteMessage message}) async {
    //AndroidInitializationSettings
    AndroidInitializationSettings initializationSettingsAndroid =
        const AndroidInitializationSettings('@drawable/background');

//initializationSettingsIOS
    var initializationSettingsIOS = DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
      requestCriticalPermission: true,
      requestProvisionalPermission: true,
    );

    var initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsIOS,
    );

    // request notification permissions for android 13 or above
    localNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()!
        .requestNotificationsPermission();
    await localNotificationsPlugin.initialize(initializationSettings,
        onDidReceiveNotificationResponse:
            (NotificationResponse notificationResponse) async {
      handleMessage(context, message);
    });
  }

  // function to show visible notification when app is active
  Future<void> showNotification(RemoteMessage message) async {
    int id = m.Random.secure().nextInt(10000000);
    AndroidNotificationDetails androidNotificationDetails =
        AndroidNotificationDetails(
      'HighImportanceNotification',
      "HighImportanceNotification name",
      channelDescription: 'your channel description',
      importance: Importance.max,
      priority: Priority.high,
      playSound: true,
      ticker: 'ticker',
      // sound: channel.sound
      //     sound: RawResourceAndroidNotificationSound('jetsons_doorbell')
      //  icon: largeIconPath
    );

    const DarwinNotificationDetails darwinNotificationDetails =
        DarwinNotificationDetails(
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
    );

    NotificationDetails notificationDetails = NotificationDetails(
      android: androidNotificationDetails,
      iOS: darwinNotificationDetails,
    );

    await localNotificationsPlugin.show(
      id,
      message.notification!.title.toString(),
      message.notification!.body.toString(),
      notificationDetails,
    );
  }

//handle tap on notification when app is in background or terminated
  Future<void> setupInteractMessage(BuildContext context) async {
    // when app is terminated
    RemoteMessage? initialMessage =
        await FirebaseMessaging.instance.getInitialMessage();

    if (initialMessage != null) {
      handleMessage(context, initialMessage);
    }

    //when app ins background but app is open
    FirebaseMessaging.onMessageOpenedApp.listen((event) {
      handleMessage(context, event);
    });
  }

  void handleMessage(BuildContext context, RemoteMessage message) {
    log(" testing ${message.data.toString()}");
  }

  Future foregroundMessage() async {
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
  }
}
