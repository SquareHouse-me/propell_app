import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:propell/configs/res/colors.dart';
import 'package:propell/configs/res/images.dart';
import 'package:propell/views/dashBoard/home_view.dart';
import 'package:responsive_framework/responsive_framework.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1), () {
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
