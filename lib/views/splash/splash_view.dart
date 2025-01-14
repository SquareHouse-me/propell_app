import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:propell/configs/res/colors.dart';
import 'package:propell/configs/res/images.dart';
import 'package:propell/viewModels/controllers/home_controller.dart';
import 'package:propell/views/dashBoard/home_view.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
       
      Get.off(() => HomeView());
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kPrimary,
      body: Center(
        child: ResponsiveBreakpoints.of(context).isMobile
            ? Image.asset(AppImage.appLogo)
            : Image.asset(AppImage.webLogo),
      ),
    );
  }
}
