import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gif_view/gif_view.dart';
import 'package:propell/configs/res/colors.dart';
import 'package:propell/configs/res/images.dart';
import 'package:responsive_framework/responsive_framework.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5), () {
      Get.offAllNamed('/HomeView');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GifView.asset(
            'assets/images/gifLogo.gif',
            height: 150,
            width: 150,
            frameRate: 30,
          ),
        ),
      ),
    );
  }
}
