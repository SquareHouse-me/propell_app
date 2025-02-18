// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:responsive_framework/responsive_framework.dart';

import 'package:propell/configs/generalWidgets/customfield_components.dart';
import 'package:propell/configs/generalWidgets/customphonefield_components.dart';
import 'package:propell/configs/generalWidgets/export_general.dart';
import 'package:propell/configs/generalWidgets/primary_button.dart';
import 'package:propell/configs/generalWidgets/textstyle_component.dart';
import 'package:propell/configs/res/colors.dart';
import 'package:propell/configs/utlis/extension.dart';
import 'package:propell/configs/utlis/validation_utils.dart';
import 'package:propell/viewModels/controllers/summary_controller.dart';
import 'package:propell/viewModels/controllers/theme_controller.dart';

class StepOne extends StatelessWidget {
  final String id;
  StepOne({
    Key? key,
    required this.id,
  }) : super(key: key);

  final oneStepC = Get.find<SummaryController>();

  ThemeController themeController = Get.find<ThemeController>();
  @override
  Widget build(BuildContext context) {
    bool isMobile = ResponsiveBreakpoints.of(context).isMobile;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 26.w : 0,
      ),
      child: Form(
        key: oneStepC.formKey,
        child: ResponsiveRowColumn(
          columnCrossAxisAlignment: CrossAxisAlignment.start,
          layout: ResponsiveRowColumnType.COLUMN,
          children: [
            ResponsiveRowColumnItem(
              child: TextComponents(
                color: themeController.isDarkMode.value
                    ? AppColor.kWhiteColor
                    : AppColor.kDarkTitleColor,
                title: 'Personal Details',
                size: isMobile ? 16.sp : 16,
                weight: FontWeight.bold,
              ),
            ),
            ResponsiveRowColumnItem(
              child: 9.heightSpace,
            ),
            ResponsiveRowColumnItem(
              child: CustomFieldComponents(
                keyboardType: TextInputType.name,
                hint: 'Your Name',
                controller: oneStepC.inputName,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'name field must not be empty';
                  }
                  // Display the real-time error
                },
              ),
            ),
            ResponsiveRowColumnItem(
              child: 9.heightSpace,
            ),
            ResponsiveRowColumnItem(
              child: CustomFieldComponents(
                  enabled: id.isNotEmpty ? true : false,
                  keyboardType: TextInputType.emailAddress,
                  hint: 'Your email here',
                  controller: oneStepC.inputEmail,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Your email here';
                    }
                  }),
            ),
            ResponsiveRowColumnItem(
              child: 9.heightSpace,
            ),
            ResponsiveRowColumnItem(
                child: CustomPhoneFieldComponents(
                    keyboardType: TextInputType.phone,
                    EditController: oneStepC.inputPhone,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'phone field must not be empty';
                      }
                    })),
            // ResponsiveRowColumnItem(
            //   child: 9.heightSpace,
            // ),
            // ResponsiveRowColumnItem(
            //   child: CustomFieldComponents(
            //       keyboardType: TextInputType.text,
            //       minLines: isMobile ? 2 : 4,
            //       maxLines: isMobile ? 4 : 5,
            //       hint: 'Add Description (Optional)',
            //       controller: oneStepC.inputDescription),
            // ),
            // ResponsiveRowColumnItem(
            //   child: 9.heightSpace,
            // ),
            // ResponsiveRowColumnItem(
            //     child: DashedContainer(
            //   dashColor: AppColor.kGreen1Color,
            //   borderRadius: isMobile ? 15.r : 15,
            //   child: Container(
            //     padding: EdgeInsets.symmetric(
            //         vertical: isMobile ? 22.h : 22,
            //         horizontal: isMobile ? 70.w : 70),
            //     width: isMobile ? 347.w : 512,
            //     // height: ResponsiveBreakpoints.of(context).isMobile ? 98.h : 121,
            //     decoration: BoxDecoration(
            //       color: AppColor.kGreen1Color.withOpacity(0.2),
            //       borderRadius: BorderRadius.all(
            //         Radius.circular(isMobile ? 15.r : 15),
            //       ),
            //     ),
            //     child: Center(
            //       child: ResponsiveRowColumn(
            //         layout: ResponsiveRowColumnType.COLUMN,
            //         columnCrossAxisAlignment: CrossAxisAlignment.center,
            //         rowMainAxisAlignment: MainAxisAlignment.center,
            //         columnSpacing: 1,
            //         children: [
            //           ResponsiveRowColumnItem(
            //               child: SvgPicture.asset(AppIcons.sendSquare)),
            //           ResponsiveRowColumnItem(
            //               child: TextComponents(
            //             color: AppColor.kSquareText,
            //             title: "Upload your file here (Optional)",
            //             size: isMobile ? 12.sp : 14,
            //             weight: FontWeight.w400,
            //           ))
            //         ],
            //       ),
            //     ),
            //   ),
            // )),

            ResponsiveRowColumnItem(
              child: 20.heightSpace,
            ),
            ResponsiveRowColumnItem(
                child: Obx(() => PrimaryButton(
                    width: isMobile ? 346.w : 512,
                    height: isMobile ? 56.h : 56,
                    onTap: () async {
                      if (oneStepC.formKey.currentState!.validate()) {
                        id.isNotEmpty
                            ? await oneStepC.checkoutUpdate(true, id)
                            : await oneStepC.checkout();
                      }
                      // Increment the step value
                      // oneStepC.currentStep.value += 1;

                      print("Current Step: ${oneStepC.currentStep.value}");
                    },
                    childWidget: oneStepC.isCheckoutLoading.value
                        ? getIndicator()
                        : TextComponents(
                            title: "Continue",
                            size: isMobile ? 16.sp : 16,
                            color: AppColor.kWhiteColor,
                            weight: FontWeight.w400,
                          ),
                    bgColor: AppColor.kGreen1Color))),
            ResponsiveRowColumnItem(
              child: 20.heightSpace,
            ),
          ],
        ),
      ),
    );
  }
}
