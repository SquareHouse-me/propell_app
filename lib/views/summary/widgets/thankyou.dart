import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:propell/configs/generalWidgets/export_general.dart';
import 'package:propell/configs/generalWidgets/primary_button.dart';
import 'package:propell/configs/generalWidgets/textstyle_component.dart';
import 'package:propell/configs/res/colors.dart';
import 'package:propell/configs/res/icons.dart';
import 'package:propell/configs/utlis/extension.dart';
import 'package:propell/views/dashBoard/home_view.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ThankyouDialog {
  static showLocationDialog(BuildContext context) {
    bool isMobile = ResponsiveBreakpoints.of(context).isMobile;

    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Padding(
          padding: EdgeInsets.only(bottom: 20.h),
          child: Dialog(
            backgroundColor: AppColor.kPrimary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(isMobile ? 20.r : 20.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                  height: isMobile ? null : 400,
                  child: ResponsiveRowColumn(
                    layout: ResponsiveRowColumnType.COLUMN,
                    columnMainAxisSize: MainAxisSize.min,
                    columnCrossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ResponsiveRowColumnItem(
                        child: 40.heightSpace,
                      ),
                      ResponsiveRowColumnItem(
                          child: SvgPicture.asset(AppIcons.thankyou)),
                      ResponsiveRowColumnItem(
                        child: 24.heightSpace,
                      ),
                      ResponsiveRowColumnItem(
                          child: TextComponents(
                        color: AppColor.kGreen1Color,
                        title: 'Thank You',
                        size: isMobile ? 26.sp : 26,
                        weight: FontWeight.w600,
                      )),
                      ResponsiveRowColumnItem(
                        child: 12.heightSpace,
                      ),
                      ResponsiveRowColumnItem(
                          child: TextComponents(
                        color: AppColor.kWhiteColor,
                        title: 'payment successful done',
                        size: isMobile ? 18.sp : 18,
                        weight: FontWeight.w400,
                      )),
                      ResponsiveRowColumnItem(
                        child: 50.heightSpace,
                      ),
                      ResponsiveRowColumnItem(
                          child: PrimaryButton(
                              width: isMobile ? 295.w : 295,
                              height: isMobile ? 55.h : 55,
                              onTap: () {
                                Get.offAll(() => HomeView());
                              },
                              childWidget: TextComponents(
                                title: "ok",
                                size: isMobile ? 16.sp : 16,
                                color: AppColor.kWhiteColor,
                                weight: FontWeight.w400,
                              ),
                              bgColor: AppColor.kGreen1Color))
                    ],
                  )),
            ),
          ),
        );
      },
    );
  }
}
