import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:propell/configs/res/colors.dart';

class Utils {
  static void fieldFocusChange(
      BuildContext context, FocusNode current, FocusNode nextFocus) {
    current.unfocus();
    FocusScope.of(context).nextFocus();
  }

  static toastMessage(String message) {
    //  Fluttertoast.showToast(msg: message, backgroundColor: Colors.black26);
  }

  static snakBar(
    String title,
    String message,
  ) {
    Get.snackbar(title, message, backgroundColor: Colors.white);
  }

  /*--------------------Email validation ----------------------*/
  static String? validateEmail(String value) {
    if (value.isEmpty) {
      return '⚠️ Email is required';
    }
    final emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');
    if (!emailRegex.hasMatch(value)) {
      return '⚠️ Invalid email format';
    }
    return null;
  }

  /*--------------------Name validation ----------------------*/
  static String? validateNames(String value) {
    if (value.isEmpty) {
      return '⚠️ Name is required';
    }
    if (value.length >= 20) {
      return 'Name must be at least 20 characters long';
    }
    if (value.length < 4) {
      return 'Name must be at least 4 characters long';
    }
    return null;
  }

  /*--------------------Password validation ----------------------*/
  static String? validatePassword(String password) {
    if (password.isEmpty) {
      return '⚠️ Password is required';
    }
    if (password.length < 8) {
      return '⚠️ Password must be at least 8 characters long';
    }
    final RegExp passwordRegex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    if (!passwordRegex.hasMatch(password)) {
      return '⚠️ Password must contain at least one uppercase letter, one lowercase letter, one digit, one special character, and be at least 8 characters long';
    }
    return null;
  }

  static String? validatePhoneNumber(String phone) {
    if (phone.isEmpty) {
      return '⚠️ Phone number is required';
    }
    // Regular expression to match a phone number between 8 and 13 digits
    final RegExp phoneRegex = RegExp(r'^[0-9]{8,13}$');
    if (!phoneRegex.hasMatch(phone)) {
      return "⚠️ Please enter a valid phone number.\n It should contain between 8 and 13 digits.";
    }
    return null;
  }
}

getCircle(Color valueColor, Color bg) {
  return SizedBox(
    height: 25.0, // Adjust the height
    width: 25.0, // Adjust the width
    child: CircularProgressIndicator.adaptive(
      backgroundColor: bg, // Background color (optional)
      strokeWidth: 4.0, // Adjust the thickness of the indicator
      valueColor:
          AlwaysStoppedAnimation<Color>(valueColor), // Set color to white
    ),
  );
}

getIndicator() {
  return const SizedBox(
    width: 50,
    height: 50,
    child: LoadingIndicator(
        indicatorType: Indicator.ballClipRotatePulse,

        /// Required, The loading type of the widget
        colors: [AppColor.kGreen1Color, AppColor.kWhiteColor],

        /// Optional, The color collections
        strokeWidth: 2,

        /// Optional, The stroke of the line, only applicable to widget which contains line
        backgroundColor: Colors.transparent,

        /// Optional, Background of the widget
        pathBackgroundColor: Colors.transparent

        /// Optional, the stroke backgroundColor
        ),
  );
}
