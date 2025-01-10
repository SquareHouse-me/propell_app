// ignore_for_file: use_super_parameters

import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:propell/configs/generalWidgets/textstyle_component.dart';
import 'package:propell/configs/res/colors.dart';
import 'package:propell/configs/res/icons.dart';
import 'package:propell/main.dart';
import 'package:propell/viewModels/controllers/summary_controller.dart';
import 'package:responsive_framework/responsive_framework.dart';

class CustomPhoneFieldComponents extends StatelessWidget {
  final IconData? suffixIcon;
  final TextEditingController EditController;
  final VoidCallback? onpressed;
  final String? Function(String?)? validator;
  final bool obscureText;
  final TextInputType? keyboardType;
  final Function(String)? onChanged; // Added this line for real-time validation
  final Widget? labelWidget;
  const CustomPhoneFieldComponents({
    Key? key,
    this.suffixIcon,
    this.onpressed,
    this.validator,
    this.labelWidget,
    required this.EditController,
    this.obscureText = false,
    this.keyboardType,
    this.onChanged, // Added this line to pass the onChanged function
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX<SummaryController>(
        init: SummaryController(summaryRepo: getIt()),
        builder: (controller) {
          return TextFormField(
            onTapOutside: (v) {
              FocusScope.of(context).unfocus();
            },
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
              LengthLimitingTextInputFormatter(
                  13), // Adjust the limit as needed
            ],
            keyboardType: keyboardType,
            cursorColor: AppColor.kGreen1Color,
            style: GoogleFonts.montserrat(
              fontSize: ResponsiveBreakpoints.of(context).isMobile ? 14.sp : 14,
              color: AppColor.kLightHintText,
              fontWeight: FontWeight.w400,
            ),
            obscureText: obscureText,
            decoration: InputDecoration(
              label: labelWidget,
              filled: true,
              fillColor: AppColor.kBlck23,
              contentPadding: EdgeInsets.symmetric(
                  vertical:
                      ResponsiveBreakpoints.of(context).isMobile ? 16.sp : 16,
                  horizontal:
                      ResponsiveBreakpoints.of(context).isMobile ? 23.w : 23),
              focusColor: Colors.white,
              hintText: '${controller.phoneNumber.value}',
              hintStyle: GoogleFonts.montserrat(
                fontSize:
                    ResponsiveBreakpoints.of(context).isMobile ? 14.sp : 14,
                color: AppColor.kLightHintText,
                fontWeight: FontWeight.w400,
              ),
              prefixIcon: InkWell(
                onTap: () {
                  showCountryPicker(
                    context: context,
                    //Optional.  Can be used to exclude(remove) one ore more country from the countries list (optional).
                    exclude: <String>['KN', 'MF'],
                    favorite: <String>['SE'],
                    //Optional. Shows phone code before the country name.
                    showPhoneCode: true,
                    onSelect: (Country country) async {
                      controller.countryCode.value = country.phoneCode;
                      controller.countryEmoji.value = country.flagEmoji;
                      print(controller.countryCode.value +
                          " " +
                          controller.countryEmoji.value);
                      // final perf = await SharedPreferences.getInstance();
                      // perf.setString("flagEmoji", country.flagEmoji.toString());
                      // perf.setString("phoneCode", country.phoneCode.toString());
                    },
                    countryListTheme: CountryListThemeData(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        topRight: Radius.circular(40.0),
                      ),
                      // Optional. Styles the search field.
                      inputDecoration: InputDecoration(
                        labelText: 'Search',
                        hintText: 'Search',
                        prefixIcon: const Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: const Color(0xFF8C98A8).withOpacity(0.2),
                          ),
                        ),
                      ),
                      // Optional. Styles the text in the search field
                      searchTextStyle: GoogleFonts.montserrat(
                        fontSize: ResponsiveBreakpoints.of(context).isMobile
                            ? 14.sp
                            : 14,
                        color: AppColor.kLightHintText,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  );
                },
                child: SizedBox(
                  width:
                      ResponsiveBreakpoints.of(context).isMobile ? 100.w : 100,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FittedBox(
                        child: TextComponents(
                          color: Colors.white,
                          title:
                              "${controller.countryEmoji}+${controller.countryCode.value}",
                          size: ResponsiveBreakpoints.of(context).isMobile
                              ? 14.sp
                              : 14,
                          weight: FontWeight.w400,
                        ),
                      ),
                      FittedBox(
                        child: SvgPicture.asset(
                          AppIcons.directionDownArrow,
                          color: AppColor.kWhiteColor,
                          height: ResponsiveBreakpoints.of(context).isMobile
                              ? 25.h
                              : 25,
                          width: ResponsiveBreakpoints.of(context).isMobile
                              ? 20.w
                              : 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // suffixIcon: suffixIcon != null
              //     ? Padding(
              //         padding: EdgeInsets.only(right: 8.w),
              //         child: IconButton(
              //             onPressed: onpressed,
              //             icon: Icon(
              //               suffixIcon,
              //               color: const Color(0xffB6B6BD),
              //             )),
              //       )
              //     : null,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                    ResponsiveBreakpoints.of(context).isMobile ? 15.r : 15),
                borderSide: BorderSide(
                  color: AppColor.kBlck23,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.red),
                borderRadius: BorderRadius.circular(
                    ResponsiveBreakpoints.of(context).isMobile ? 15.0.r : 15),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                    ResponsiveBreakpoints.of(context).isMobile ? 15.r : 15),
                borderSide: BorderSide(
                  color: AppColor.kBlck23,
                ),
              ),
              // focusedErrorBorder: OutlineInputBorder(
              //   borderSide: const BorderSide(color: Colors.red),
              //   borderRadius: BorderRadius.circular(15.0.r),
              // ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                    ResponsiveBreakpoints.of(context).isMobile ? 15.r : 15),
                borderSide: BorderSide(
                  color: AppColor.kBlck23,
                ),
              ),
              errorStyle: const TextStyle(color: Colors.red, height: 0),
            ),
            controller: EditController,
            validator: validator,
            onChanged: onChanged, // Added this line for real-time validation
          );
        });
  }
}
