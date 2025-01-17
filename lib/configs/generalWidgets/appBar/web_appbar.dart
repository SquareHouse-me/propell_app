import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:propell/configs/generalWidgets/textstyle_component.dart';
import 'package:propell/configs/res/colors.dart';
import 'package:propell/configs/res/icons.dart';
import 'package:propell/configs/res/images.dart';
import 'package:propell/configs/utlis/extension.dart';
import 'package:propell/viewModels/controllers/home_controller.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WebAppbarWidget extends StatelessWidget {
  WebAppbarWidget({super.key});

  HomeController homeC = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColor.kPrimary,
      elevation: 0,
      toolbarHeight: 200,
      surfaceTintColor: Colors.transparent,
      iconTheme: const IconThemeData(color: AppColor.kGreen1Color),
      title: ResponsiveRowColumn(
        layout: ResponsiveRowColumnType.ROW,
        rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ResponsiveRowColumnItem(
            child: Image.asset(
              ResponsiveBreakpoints.of(context).isMobile
                  ? AppImage.appLogo
                  : AppImage.webLogo,
              width: 100,
              height: 50,
            ),
          ),
          ResponsiveRowColumnItem(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal:
                    ResponsiveBreakpoints.of(context).isMobile ? 4.w : 6,
              ),
              decoration: BoxDecoration(
                color: AppColor.klightBalck,
                borderRadius: BorderRadius.circular(
                    ResponsiveBreakpoints.of(context).isMobile ? 20.r : 20),
              ),
              child: Row(
                children: [
                  SvgPicture.asset(
                    AppIcons.globalIcon,
                    color: AppColor.kGreen1Color,
                  ),
                  8.widthSpace,
                  Obx(() => DropdownButton<String>(
                        value: homeC.language.value,
                        iconEnabledColor: AppColor.kGreen1Color,
                        dropdownColor: Colors.black,
                        style: GoogleFonts.montserrat(
                          fontSize: 12,
                          color: AppColor.kWhiteColor,
                          fontWeight: FontWeight.w500,
                        ),
                        items: ['English', 'Arabic']
                            .map((e) => DropdownMenuItem(
                                  value: e,
                                  child: TextComponents(
                                    color: Colors.white,
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
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _saveData(String languageCode, String language) async {
    SharedPreferences _prefs = await SharedPreferences.getInstance();

    await _prefs.setString('lang', language);
    await _prefs.setString('langCode', languageCode);
  }
}
