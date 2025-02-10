import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:propell/configs/generalWidgets/textstyle_component.dart';
import 'package:propell/configs/res/colors.dart';
import 'package:propell/configs/utlis/validation_utils.dart';
import 'package:propell/viewModels/controllers/home_controller.dart';
import 'package:propell/viewModels/controllers/theme_controller.dart';
import 'package:propell/views/dashBoard/widgets/select_type.dart';
import 'package:responsive_framework/responsive_framework.dart';

Widget buildOptionCard(BuildContext context,
    {required String icon,
    required String label,
    required String subTitle,
    required int id}) {
  final homeC = Get.find<HomeController>();
  ThemeController themeController = Get.find<ThemeController>();
  print(icon);
  return Obx(() => Container(
        padding: EdgeInsets.symmetric(
            horizontal: ResponsiveBreakpoints.of(context).isMobile ? 19.h : 20,
            vertical: ResponsiveBreakpoints.of(context).isMobile ? 12.h : 20),
        decoration: BoxDecoration(
          color: themeController.isDarkMode.value
              ? AppColor.kBlck23
              : AppColor.kWhiteColor,
          boxShadow: themeController.isDarkMode.value
              ? null
              : [
                  BoxShadow(
                      offset: Offset(0, 4),
                      blurRadius: 40,
                      spreadRadius: 0,
                      color: Color(0XFFB5B5B5).withOpacity(0.2))
                ],
          borderRadius: BorderRadius.circular(
              ResponsiveBreakpoints.of(context).isMobile ? 15.r : 15),
        ),
        child: ResponsiveBreakpoints.of(context).isMobile
            ? ListTile(
                splashColor: AppColor.kGreen1Color.withOpacity(0.5),
                hoverColor: AppColor.kGreen1Color.withOpacity(0.5),
                contentPadding: EdgeInsets.zero,
                leading: Image.network(
                  icon, // URL of the image
                  width: 50,
                  height: 50,
                  color: themeController.isDarkMode.value
                      ? AppColor.kWhiteColor
                      : AppColor.kGreen1Color,
                  fit: BoxFit.fitWidth,
                  loadingBuilder: (BuildContext context, Widget child,
                      ImageChunkEvent? loadingProgress) {
                    if (loadingProgress == null)
                      return child; // Return the image once loaded
                    return getIndicator(); // Show the custom loading indicator
                  },
                  errorBuilder: (BuildContext context, Object error,
                      StackTrace? stackTrace) {
                    return const Icon(
                      Icons.error,
                      color:
                          AppColor.kGreen1Color, // Custom error icon and color
                    );
                  },
                ),
                title: TextComponents(
                  color: themeController.isDarkMode.value
                      ? AppColor.kWhiteColor
                      : AppColor.kGreen1Color,
                  title: label,
                  size: 14.sp,
                  weight: FontWeight.w500,
                ),
                subtitle: TextComponents(
                  color: themeController.isDarkMode.value
                      ? AppColor.kWhiteColor
                      : AppColor.kGreen1Color,
                  title: subTitle,
                  size: 14.sp,
                  weight: FontWeight.w500,
                ),
                trailing: Icon(Icons.arrow_forward_ios,
                    color: themeController.isDarkMode.value
                        ? AppColor.kWhiteColor
                        : AppColor.kGreen1Color,
                    size: 18.sp),
                onTap: () async {
                  print('object pressed');
                  homeC.catId = id;
                  print('cat id ${homeC.catId} $id');
                  await SelectType.showLocationDialog(context);
                },
              )
            : InkWell(
                splashColor: AppColor.kGreen1Color,
                hoverColor: AppColor.kGreen1Color,
                onTap: () async {
                  print('object pressed');
                  homeC.catId = id;
                  print('cat id ${homeC.catId} $id');
                  await SelectType.showLocationDialog(context);
                },
                child: ResponsiveRowColumn(
                  layout: ResponsiveRowColumnType.COLUMN,
                  columnCrossAxisAlignment: CrossAxisAlignment.center,
                  columnMainAxisAlignment: MainAxisAlignment.center,
                  columnSpacing: 22,
                  children: [
                    ResponsiveRowColumnItem(
                      child: Flexible(
                        fit: FlexFit.tight,
                        child: Image.network(
                          icon, // URL of the image
                          width: 50,
                          height: 50,
                          color: themeController.isDarkMode.value
                              ? null
                              : AppColor.kGreen1Color,
                          fit: BoxFit.fitWidth,
                          loadingBuilder: (BuildContext context, Widget child,
                              ImageChunkEvent? loadingProgress) {
                            if (loadingProgress == null)
                              return child; // Return the image once loaded
                            return getIndicator(); // Show the custom loading indicator
                          },
                          errorBuilder: (BuildContext context, Object error,
                              StackTrace? stackTrace) {
                            return const Icon(
                              Icons.error,
                              color: AppColor
                                  .kGreen1Color, // Custom error icon and color
                            );
                          },
                        ),
                      ),
                    ),
                    ResponsiveRowColumnItem(
                        child: Obx(() => RichText(
                              text: TextSpan(
                                text: label + " " + subTitle,
                                style: homeC.languageCode.value == 'ar'
                                    ? TextStyle(
                                        fontFamily: 'NotoKufiArabic',
                                        fontSize:
                                            ResponsiveBreakpoints.of(context)
                                                    .isMobile
                                                ? 15.sp
                                                : 15,
                                        color: themeController.isDarkMode.value
                                            ? AppColor.kWhiteColor
                                            : AppColor.kGreen1Color,
                                        fontWeight: FontWeight.w500,
                                      )
                                    : TextStyle(
                                        fontSize:
                                            ResponsiveBreakpoints.of(context)
                                                    .isMobile
                                                ? 15.sp
                                                : 15,
                                        color: themeController.isDarkMode.value
                                            ? AppColor.kWhiteColor
                                            : AppColor.kGreen1Color,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Montserrat',
                                      ),
                                children: [
                                  //  ,
                                ],
                              ),
                              textAlign: TextAlign.center,
                            )))
                  ],
                ),
              ),
      ));
}

// Widget _buildImage(String path) {
//   if (path.endsWith('.svg')) {
//     return SvgPicture.network(
//       path,
//       placeholderBuilder: (context) => Center(
//         child: CircularProgressIndicator(),
//       ),
//       height: 80.h,
//       width: 75.w,
//       fit: BoxFit.contain,
//     );
//   } else {
//     return Image.network(
//       path,
//       fit: BoxFit.cover,
//       errorBuilder: (context, error, stackTrace) => Icon(
//         Icons.error,
//         size: 40.sp,
//         color: Colors.grey,
//       ),
//     );
//   }
// }
