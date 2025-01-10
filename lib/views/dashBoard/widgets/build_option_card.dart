import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:propell/configs/generalWidgets/textstyle_component.dart';
import 'package:propell/configs/res/colors.dart';
import 'package:propell/configs/utlis/validation_utils.dart';
import 'package:propell/viewModels/controllers/home_controller.dart';
import 'package:propell/views/dashBoard/widgets/select_type.dart';
import 'package:responsive_framework/responsive_framework.dart';

Widget buildOptionCard(BuildContext context,
    {required String icon,
    required String label,
    required String subTitle,
    required int id}) {
  final homeC = Get.find<HomeController>();
  print(icon);
  return Container(
    padding: EdgeInsets.symmetric(
        horizontal: ResponsiveBreakpoints.of(context).isMobile ? 19.h : 70,
        vertical: ResponsiveBreakpoints.of(context).isMobile ? 30.h : 50),
    decoration: BoxDecoration(
      color: AppColor.kBlck23,
      borderRadius: BorderRadius.circular(
          ResponsiveBreakpoints.of(context).isMobile ? 15.r : 15),
    ),
    child: ResponsiveBreakpoints.of(context).isMobile
        ? ListTile(
            contentPadding: EdgeInsets.zero,
            leading: SizedBox(
              width: 50,
              height: 50,
              child: Image.network(
                icon, // URL of the image
                width: 50,
                height: 50,
                fit: BoxFit.fitWidth,
                loadingBuilder: (BuildContext context, Widget child,
                    ImageChunkEvent? loadingProgress) {
                  if (loadingProgress == null)
                    return child; // Return the image once loaded
                  return getIndicator(); // Show the custom loading indicator
                },
                errorBuilder: (BuildContext context, Object error,
                    StackTrace? stackTrace) {
                  return Icon(
                    Icons.error,
                    color: AppColor.kGreen1Color, // Custom error icon and color
                  );
                },
              ),
            ),
            title: TextComponents(
              color: Colors.white,
              title: label,
              size: 14.sp,
              weight: FontWeight.w500,
            ),
            subtitle: TextComponents(
              color: Colors.white,
              title: subTitle,
              size: 14.sp,
              weight: FontWeight.w500,
            ),
            trailing: Icon(Icons.arrow_forward_ios,
                color: AppColor.kGreen1Color, size: 18.sp),
            onTap: () async {
              print('object pressed');
              homeC.catId = id;
              print('cat id ${homeC.catId} $id');
              await SelectType.showLocationDialog(context);
            },
          )
        : GestureDetector(
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
                      fit: BoxFit.fitWidth,
                      loadingBuilder: (BuildContext context, Widget child,
                          ImageChunkEvent? loadingProgress) {
                        if (loadingProgress == null)
                          return child; // Return the image once loaded
                        return getIndicator(); // Show the custom loading indicator
                      },
                      errorBuilder: (BuildContext context, Object error,
                          StackTrace? stackTrace) {
                        return Icon(
                          Icons.error,
                          color: AppColor
                              .kGreen1Color, // Custom error icon and color
                        );
                      },
                    ),
                  ),
                ),
                ResponsiveRowColumnItem(
                    child: RichText(
                  text: TextSpan(
                    text: label + " ",
                    style: GoogleFonts.montserrat(
                      fontSize: 15,
                      color: AppColor.kWhiteColor,
                      fontWeight: FontWeight.w500,
                    ),
                    children: [
                      TextSpan(
                        text: subTitle,
                        style: GoogleFonts.montserrat(
                          fontSize: 15,
                          color: AppColor.kWhiteColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ))
              ],
            ),
          ),
  );
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
