import 'dart:developer';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_it/get_it.dart'; 
import 'package:propell/configs/res/theme.dart';
import 'package:propell/data/repository/home_repo.dart';
import 'package:propell/data/repository/summary_repo.dart';
import 'package:propell/firebase_options.dart';
import 'package:propell/viewModels/controllers/home_controller.dart';
import 'package:propell/viewModels/controllers/theme_controller.dart';
import 'package:propell/views/booking/booking_calander.dart';
import 'package:propell/views/dashBoard/home_view.dart'; 
import 'package:propell/views/summary/summary_view.dart';
import 'package:propell/views/summary/widgets/failed.dart';
import 'package:propell/views/summary/widgets/thankyou.dart';
import 'package:responsive_framework/responsive_framework.dart';
 

import 'package:flutter_web_plugins/flutter_web_plugins.dart'; 
GetIt getIt = GetIt.instance;
// @pragma('vm:entry-point')
// Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
//   log(message.notification!.title.toString() + ' MessagingBackground');
// }

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
  // FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  setUrlStrategy(PathUrlStrategy());
  // Storage Initialize karo
  Get.put(ThemeController(), permanent: true);
  setup();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Get.put(
      HomeController(
        homeRepo: getIt<HomeRepo>(),
      ),
    );
    final ThemeController themeController = Get.find<ThemeController>();
    return ScreenUtilInit(
      designSize: const Size(360, 800), // Base design for mobile
      builder: (context, child) {
        return GetMaterialApp(
          locale: Get.locale,
          theme: AppThemes.lightTheme,
          darkTheme: AppThemes.darkTheme,
          themeMode: themeController.isDarkMode.value
              ? ThemeMode.dark
              : ThemeMode.light,

          // theme: ThemeData(
          //   // fontFamily:  'Montserrat',

          //   scaffoldBackgroundColor:
          //       Color(0xFF231F20), // Background color for the app
          //   primaryColor: Color(0xFF231F20), // Primary color
          // ),
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
          initialRoute: '/HomeView',
          getPages: [
            // GetPage(name: '/', page: () => SplashView()),
            GetPage(name: '/HomeView', page: () => HomeView()),
            GetPage(
              name: '/BookingCalendar',
              page: () => const BookingCalander(),
            ),
            GetPage(name: '/SummaryStepper', page: () => SummaryStepper()),
            GetPage(
                name: '/ThankyouDialogPage/:id',
                page: () => ThankyouDialogPage()),
            GetPage(name: '/FailedDialogPage/:id', page: () => FailedDialogPage()),
          ],
        );
      },
    );
  }
}
