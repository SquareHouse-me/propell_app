import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:propell/configs/generalWidgets/appBar/app_bar.dart';
import 'package:propell/configs/generalWidgets/export_general.dart';
import 'package:propell/configs/generalWidgets/textstyle_component.dart';
import 'package:propell/configs/res/colors.dart';
import 'package:propell/main.dart';
import 'package:propell/viewModels/controllers/summary_controller.dart';
import 'package:propell/views/summary/widgets/step_one.dart';
import 'package:propell/views/summary/widgets/step_two.dart';
import 'package:propell/configs/generalWidgets/appBar/web_appbar.dart';
import 'package:responsive_framework/responsive_framework.dart';

class SummaryStepper extends StatefulWidget {
  @override
  _SummaryStepperState createState() => _SummaryStepperState();
}

class _SummaryStepperState extends State<SummaryStepper> {
  SummaryController summaryController = Get.find<SummaryController>();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    summaryController.currentStep.value = 0;
  }

  @override
  Widget build(BuildContext context) {
    bool isMobile = ResponsiveBreakpoints.of(context).isMobile;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColor.kPrimary,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(isMobile ? 60 : 100),
          child: isMobile
              ? AppbarWidget(
                  title: '',
                  isFirstPage: false,
                )
              : WebAppbarWidget()),
      body: Obx(() => SingleChildScrollView(
            reverse: true,
            physics: const ClampingScrollPhysics(),
            child: Center(
              child: SizedBox(
                width: isMobile ? 347.w : 512,
                child: Column(
                  children: [
                    EasyStepper(
                      activeStep: summaryController.currentStep.value,
                      activeStepBorderColor: AppColor.kGreen1Color,
                      activeStepBackgroundColor: AppColor.kGreen1Color,
                      finishedStepBorderColor: AppColor.kGreen1Color,
                      finishedStepBackgroundColor: AppColor.kGreen1Color,
                      showLoadingAnimation: false,
                      stepShape: StepShape.circle,
                      internalPadding: 60,
                      defaultStepBorderType: BorderType.normal,
                      stepRadius: 26,
                      lineStyle: const LineStyle(
                        lineLength: 100,
                        defaultLineColor: AppColor.kGreen1Color,
                        lineSpace: 7,
                      ),
                      steps: [
                        EasyStep(
                            customStep: Center(
                              child: TextComponents(
                                color: Colors.white,
                                title: '1',
                                size: 14,
                                weight: FontWeight.w300,
                              ),
                            ),
                            customTitle: Center(
                              child: TextComponents(
                                color: Colors.white,
                                title: 'Personal Details',
                                size: 14,
                                weight: FontWeight.w400,
                              ),
                            )),
                        EasyStep(
                            customStep: Center(
                              child: TextComponents(
                                color: Colors.white,
                                title: '2',
                                size: 14,
                                weight: FontWeight.w300,
                              ),
                            ),
                            customTitle: Center(
                              child: TextComponents(
                                color: Colors.white,
                                title: 'Booking Details',
                                size: 14,
                                weight: FontWeight.w400,
                              ),
                            )),
                      ],
                      onStepReached: (index) {},
                    ),
                    summaryController.currentStep.value == 0
                        ? StepOne()
                        : StepTwo(),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
