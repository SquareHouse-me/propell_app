// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:propell/configs/generalWidgets/export_general.dart';

import 'package:propell/configs/generalWidgets/textstyle_component.dart';
import 'package:propell/configs/res/colors.dart';
import 'package:propell/configs/res/icons.dart';
import 'package:propell/configs/utlis/extension.dart';
import 'package:propell/viewModels/controllers/home_controller.dart';
import 'package:responsive_framework/responsive_framework.dart';

class AppbarWidget extends StatelessWidget {
  final String title;
  final bool isFirstPage;
  AppbarWidget({
    Key? key,
    required this.title,
    required this.isFirstPage,
  }) : super(key: key);
  HomeController homeC = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return isFirstPage
        ? AppBar(
            backgroundColor: AppColor.kPrimary,
            elevation: 0,
            toolbarHeight: 70,
            centerTitle: true,
            surfaceTintColor: AppColor.kPrimary,
            iconTheme: IconThemeData(color: AppColor.kWhiteColor),
            title: ResponsiveRowColumn(
              layout: ResponsiveRowColumnType.ROW,
              rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ResponsiveRowColumnItem(
                  child: SvgPicture.asset(
                      ResponsiveBreakpoints.of(context).isMobile
                          ? AppIcons.appBarLogo
                          : AppIcons.appBarWebLogo),
                ),
                ResponsiveRowColumnItem(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: ResponsiveBreakpoints.of(context).isMobile
                            ? 12.w
                            : 12,
                        vertical: ResponsiveBreakpoints.of(context).isMobile
                            ? 8.h
                            : 8),
                    decoration: BoxDecoration(
                      color: AppColor.klightBalck,
                      borderRadius: BorderRadius.circular(
                          ResponsiveBreakpoints.of(context).isMobile
                              ? 30.r
                              : 30),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(AppIcons.globalIcon),
                        8.widthSpace,
                        Obx(() => DropdownButton<String>(
                              value: homeC.langauge.value,
                              iconEnabledColor: AppColor.kGreen1Color,
                              dropdownColor: Colors.black,
                              style: GoogleFonts.montserrat(
                                fontSize:
                                    ResponsiveBreakpoints.of(context).isMobile
                                        ? 12.sp
                                        : 12,
                                color: AppColor.kWhiteColor,
                                fontWeight: FontWeight.w500,
                              ),
                              items: ['English', 'Arabic']
                                  .map((e) => DropdownMenuItem(
                                        value: e,
                                        child: TextComponents(
                                          color: Colors.white,
                                          title: e,
                                          size:
                                              ResponsiveBreakpoints.of(context)
                                                      .isMobile
                                                  ? 12.sp
                                                  : 12,
                                        ),
                                      ))
                                  .toList(),
                              onChanged: (value) {
                                homeC.langauge.value = value!;
                              },
                              underline: const SizedBox.shrink(),
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        : AppBar(
            backgroundColor: AppColor.kPrimary,
            elevation: 0,
            centerTitle: true,
            surfaceTintColor: AppColor.kPrimary,
            iconTheme: const IconThemeData(color: AppColor.kWhiteColor),
            title: TextComponents(
              color: Colors.white,
              title: title,
              size: 16.sp,
              weight: FontWeight.bold,
            ),
          );
  }
}
