import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:propell/configs/generalWidgets/textstyle_component.dart';
import 'package:propell/configs/res/colors.dart';
import 'package:propell/configs/res/icons.dart';
import 'package:propell/configs/res/images.dart';
import 'package:propell/configs/utlis/extension.dart';
import 'package:propell/viewModels/controllers/home_controller.dart';
import 'package:propell/viewModels/controllers/theme_controller.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WebAppbarWidget extends StatelessWidget {
  WebAppbarWidget({super.key});

  HomeController homeC = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    ThemeController themeController = Get.find<ThemeController>();
    return AppBar(
      elevation: 0,
      toolbarHeight: 200,
      title: ResponsiveRowColumn(
        layout: ResponsiveRowColumnType.ROW,
        rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ResponsiveRowColumnItem(
            child: Obx(() => Image.asset(
                  themeController.isDarkMode.value
                      ? ResponsiveBreakpoints.of(context).isMobile
                          ? AppImage.appLogo
                          : AppImage.webLogo
                      : 'assets/images/lightIcon.png',
                  width: 100,
                  height: 50,
                )),
          ),
          ResponsiveRowColumnItem(
            child: Obx(() => Container(
                  padding: EdgeInsets.symmetric(
                    horizontal:
                        ResponsiveBreakpoints.of(context).isMobile ? 4.w : 6,
                  ),
                  decoration: BoxDecoration(
                    color: themeController.isDarkMode.value
                        ? AppColor.klightBalck
                        : AppColor.kWhiteColor,
                    boxShadow: themeController.isDarkMode.value
                        ? null
                        : [
                            BoxShadow(
                                offset: Offset(0, 2),
                                blurRadius: 1,
                                spreadRadius: 0,
                                color: Color(0xFFD7D6D6))
                          ],
                    borderRadius: BorderRadius.circular(
                        ResponsiveBreakpoints.of(context).isMobile ? 20.r : 20),
                  ),
                  child: Row(
                    children: [
                      Obx(() => SvgPicture.asset(
                            AppIcons.globalIcon,
                            color: themeController.isDarkMode.value
                                ? AppColor.kWhiteColor
                                : AppColor.kGreen1Color,
                          )),
                      8.widthSpace,
                      Obx(() => DropdownButton<String>(
                            borderRadius: BorderRadius.circular(
                                ResponsiveBreakpoints.of(context).isMobile
                                    ? 20.r
                                    : 20),
                            value: homeC.language.value,
                            iconEnabledColor: themeController.isDarkMode.value
                                ? AppColor.kWhiteColor
                                : AppColor.kGreen1Color,
                            dropdownColor: themeController.isDarkMode.value
                                ? AppColor.klightBalck
                                : AppColor.kWhiteColor,
                            style: homeC.languageCode.value == 'ar'
                                ? TextStyle(
                                    fontFamily: 'NotoKufiArabic',
                                    fontSize: ResponsiveBreakpoints.of(context)
                                            .isMobile
                                        ? 12.sp
                                        : 12,
                                    color: themeController.isDarkMode.value
                                        ? AppColor.kWhiteColor
                                        : AppColor.kGreen1Color,
                                    fontWeight: FontWeight.w500,
                                  )
                                : TextStyle(
                                    fontSize: ResponsiveBreakpoints.of(context)
                                            .isMobile
                                        ? 12.sp
                                        : 12,
                                    color: themeController.isDarkMode.value
                                        ? AppColor.kWhiteColor
                                        : AppColor.kGreen1Color,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Montserrat',
                                  ),
                            items: ['English', 'Arabic']
                                .map((e) => DropdownMenuItem(
                                      value: e,
                                      child: TextComponents(
                                        color: themeController.isDarkMode.value
                                            ? AppColor.kWhiteColor
                                            : AppColor.kGreen1Color,
                                        title: e,
                                        size: 12,
                                      ),
                                    ))
                                .toList(),
                            onChanged: (value) async {
                              if (value == 'English') {
                                homeC.languageCode.value = 'en';
                                _saveData('en', value!);
                                Get.updateLocale(const Locale('en'));
                                homeC.language.value = value!;
                                await homeC.myCategoryApi();
                              } else {
                                homeC.languageCode.value = 'ar';
                                homeC.language.value = value!;
                                _saveData('ar', value);
                                Get.updateLocale(const Locale('ar'));
                                await homeC.myCategoryApi();
                              }
                            },
                            underline: const SizedBox.shrink(),
                          )),
                    ],
                  ),
                )),
          ),
        ],
      ),
      actions: [
        IconButton(
          icon: Obx(() => Icon(
                themeController.isDarkMode.value
                    ? Icons.dark_mode
                    : Icons.light_mode,
              )),
          onPressed: () {
            themeController.toggleTheme();
          },
        ),
      ],
    );
  }

  Future<void> _saveData(String languageCode, String language) async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();

    await _prefs.setString('lang', language);
    await _prefs.setString('langCode', languageCode);
  }
}
