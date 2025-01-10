import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart';
import 'package:propell/data/repository/home_repo.dart';
import 'package:propell/data/repository/summary_repo.dart';
import 'package:propell/firebase_options.dart';
import 'package:propell/viewModels/controllers/home_controller.dart';
import 'package:propell/views/splash/splash_view.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'package:firebase_messaging/firebase_messaging.dart';

GetIt getIt = GetIt.instance;
@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  log(message.notification!.title.toString() + ' MessagingBackground');
}

void setup() {
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo());
  getIt.registerLazySingleton<SummaryRepo>(() => SummaryRepo());

  // getIt.registerLazySingleton<ProfileRepository>(() => ProfileRepository());
  // getIt.registerLazySingleton<NotificationRepo>(() => NotificationRepo());

  // getIt.registerLazySingleton<PrivateRepository>(() => PrivateRepository());
  // getIt.registerLazySingleton<CommitRepository>(() => CommitRepository());

// Alternatively you could write it if you don't like global variables
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((value) async {
    log("Firebase initializeApp then is running");
  });
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  setup();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(
      HomeController(homeRepo: getIt<HomeRepo>()),
    );
    return ScreenUtilInit(
      designSize: const Size(360, 800), // Base design for mobile
      builder: (context, child) {
        return GetMaterialApp(
          theme: ThemeData(
            scaffoldBackgroundColor:
                Color(0xFF231F20), // Background color for the app
            primaryColor: Color(0XFF00AD8D), // Primary color
          ),
          debugShowCheckedModeBanner: false,
          builder: (context, child) => ResponsiveBreakpoints.builder(
            child: child!,
            breakpoints: [
              const Breakpoint(start: 0, end: 800, name: MOBILE),
              const Breakpoint(start: 800, end: 1000, name: TABLET),
              const Breakpoint(start: 1000, end: 1921, name: DESKTOP),
              const Breakpoint(start: 2460, end: double.infinity, name: '4K'),
            ],
          ),
          home: SplashView(),
        );
      },
    );
  }
}
