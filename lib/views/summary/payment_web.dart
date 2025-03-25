import 'dart:developer';
import 'package:flutter/material.dart'; // To check platform
import 'package:flutter_inappwebview/flutter_inappwebview.dart'; // For Web-specific imports
import 'package:get/get.dart';
import 'package:propell/configs/res/colors.dart';

import 'package:propell/views/summary/widgets/thankyou.dart';

class PaymentWeb extends StatefulWidget {
  final String url;

  PaymentWeb({required this.url});

  @override
  State<PaymentWeb> createState() => _PaymentWebState();
}

class _PaymentWebState extends State<PaymentWeb> {
  InAppWebViewController? myController;
  @override
  Widget build(BuildContext context) {
    // Mobile-specific rendering using flutter_inappwebview
    return Scaffold(
      backgroundColor: AppColor.kWhiteColor,
      appBar: AppBar(
        backgroundColor: AppColor.kWhiteColor,
        title:   Text('payment'.tr),
        centerTitle: true,
        surfaceTintColor: Colors.white,
      ),
      body: InAppWebView(
        initialUrlRequest: URLRequest(
            url: WebUri(
                widget.url)),
        initialSettings: InAppWebViewSettings(
          javaScriptEnabled: true,
          useHybridComposition: true, // Android-specific setting
        ),
        onWebViewCreated: (controller) {
          myController = controller;
          // Store the controller for further actions
        },
        onLoadStop: (controller, url) async {
          // Handle success or failure when loading stops
          if (url.toString().contains("success")) {
            log('Payment Successful');
            if (mounted) {
              Get.back();
              // Show the success dialog
              ThankyouDialog.showLocationDialog(context);
            }
          } else {
            log('Payment Failed');
          }
        },
      ),
    );
  }
}
