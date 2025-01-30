import 'package:google_fonts/google_fonts.dart';
import 'package:propell/configs/res/colors.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'export_general.dart';

class CustomFieldComponents extends StatelessWidget {
  final String hint;

  final TextEditingController controller;
  final VoidCallback? onpressed;
  final String? Function(String?)? validator;
  final bool obscureText;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? labelWidget;
  final bool enabled;
  final Color? hintColor;
  final int? minLines;
  final int?  maxLines;
  const CustomFieldComponents({
    Key? key,
    required this.hint,
    this.hintColor,
    this.enabled = false,
    this.inputFormatters,
    this.onpressed,
    this.validator,
    this.labelWidget,
    required this.controller,
    this.obscureText = false,
    this.keyboardType,
    this.onChanged, this.minLines, this.maxLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: enabled,
      minLines: minLines??null,
      maxLines: maxLines??null,
       
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
            vertical: ResponsiveBreakpoints.of(context).isMobile ? 16.sp : 16,
            horizontal: ResponsiveBreakpoints.of(context).isMobile ? 23.w : 23),
        focusColor: Colors.white,
        hintText: hint,
        hintStyle: GoogleFonts.montserrat(
          fontSize: ResponsiveBreakpoints.of(context).isMobile ? 14.sp : 14,
          color: hintColor ?? AppColor.kLightHintText,
          fontWeight: FontWeight.w400,
        ),
        // prefixIcon: prefixIconSvg != null
        //     ? Padding(
        //         padding: EdgeInsets.only(left: 12, right: 8),
        //         child: SvgPicture.asset(
        //           prefixIconSvg!,
        //           width: 24,
        //           height: 24,
        //           color: AppColor.kGreen1Color,
        //         ),
        //       )
        //     : null,
        // suffixIcon: suffixIconSvg != null
        //     ? Padding(
        //         padding: EdgeInsets.only(
        //             right:
        //                 ResponsiveBreakpoints.of(context).isMobile ? 8.w : 8),
        //         child: IconButton(
        //           onPressed: onpressed,
        //           icon: SvgPicture.asset(
        //             suffixIconSvg!,
        //             color: AppColor.kGreen1Color,
        //             width:
        //                 ResponsiveBreakpoints.of(context).isMobile ? 24.w : 24,
        //             height:
        //                 ResponsiveBreakpoints.of(context).isMobile ? 24.h : 24,
        //           ),
        //         ),
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
      controller: controller,
      validator: validator,
      onChanged: onChanged,
    );
  }
}
