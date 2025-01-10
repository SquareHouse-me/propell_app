import 'package:propell/configs/generalWidgets/export_general.dart';
import 'package:propell/configs/generalWidgets/primary_button.dart';
import 'package:propell/configs/generalWidgets/textstyle_component.dart';
import 'package:propell/configs/res/colors.dart';
import 'package:propell/configs/res/icons.dart';
import 'package:propell/configs/utlis/extension.dart';
import 'package:propell/viewModels/controllers/home_controller.dart';
import 'package:propell/viewModels/controllers/summary_controller.dart';
import 'package:propell/views/summary/payment_for_web.dart';
import 'package:propell/views/summary/payment_web.dart';
import 'package:responsive_framework/responsive_framework.dart';

class StepTwo extends StatelessWidget {
  StepTwo({super.key});
  final SummaryController summaryC = Get.find<SummaryController>();
  @override
  Widget build(BuildContext context) {
    summaryC.calculateTotal(
        timeSlot: summaryC.summaryModel.value!.bookingRespons.timeslot);
    bool isMobile = ResponsiveBreakpoints.of(context).isMobile;
    return ResponsiveRowColumn(
      columnCrossAxisAlignment: CrossAxisAlignment.start,
      layout: ResponsiveRowColumnType.COLUMN,
      children: [
        ResponsiveRowColumnItem(
          child: TextComponents(
            color: Colors.white,
            title: 'Your Booking',
            size: isMobile ? 16.sp : 16,
            weight: FontWeight.bold,
          ),
        ),
        ResponsiveRowColumnItem(
          child: 9.heightSpace,
        ),
        ResponsiveRowColumnItem(
          child: ResUseableContainer(
            isMobile: isMobile,
            appIcon: AppIcons.interiorConsultation,
            title: summaryC.summaryModel.value!.bookingRespons.category_name
                .split(' ')[0]
                .toString(),
            subTitle: summaryC.summaryModel.value!.bookingRespons.category_name
                .split(' ')[1]
                .toString(),
          ),
        ),
        ResponsiveRowColumnItem(
          child: 9.heightSpace,
        ),
        ResponsiveRowColumnItem(
          child: TextComponents(
            color: Colors.white,
            title: 'Consultant',
            size: isMobile ? 16.sp : 16,
            weight: FontWeight.bold,
          ),
        ),
        ResponsiveRowColumnItem(
          child: 9.heightSpace,
        ),
        ResponsiveRowColumnItem(
          child: ResUseableTwoContainer(
            isMobile: isMobile,
            appIcon: AppIcons.profileCircle,
            title: summaryC.summaryModel.value!.bookingRespons.consultation_name
                .toString(),
          ),
        ),
        ResponsiveRowColumnItem(
          child: 9.heightSpace,
        ),
        ResponsiveRowColumnItem(
          child: TextComponents(
            color: Colors.white,
            title: 'Date and Time',
            size: isMobile ? 16.sp : 16,
            weight: FontWeight.bold,
          ),
        ),
        ResponsiveRowColumnItem(
          child: 9.heightSpace,
        ),
        ResponsiveRowColumnItem(
            child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: isMobile ? 14.w : 14,
            vertical: isMobile ? 14.h : 14,
          ),
          width: isMobile ? 343.w : 512,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(isMobile ? 15.r : 15),
            color: AppColor.kBlck23,
          ),
          child: ResponsiveRowColumn(
            layout: ResponsiveRowColumnType.COLUMN,
            children: [
              // row 1
              ResponsiveRowColumnItem(
                  child: ResponsiveRowColumn(
                layout: ResponsiveRowColumnType.ROW,
                rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ResponsiveRowColumnItem(
                    child: ResponsiveRowColumn(
                      layout: ResponsiveRowColumnType.COLUMN,
                      columnCrossAxisAlignment: CrossAxisAlignment.start,
                      columnSpacing: 6,
                      children: [
                        ResponsiveRowColumnItem(
                            child: ResponsiveRowColumn(
                          layout: ResponsiveRowColumnType.ROW,
                          rowSpacing: 2,
                          children: [
                            ResponsiveRowColumnItem(
                              child: SvgPicture.asset(
                                AppIcons.buildings,
                                color: AppColor.kLightTitleColor,
                              ),
                            ),
                            ResponsiveRowColumnItem(
                                child: TextComponents(
                              color: AppColor.kLightTitleColor,
                              title: 'Type',
                              size: isMobile ? 12.sp : 12,
                              weight: FontWeight.w400,
                            ))
                          ],
                        )),
                        ResponsiveRowColumnItem(
                            child: TextComponents(
                          color: AppColor.kWhiteColor,
                          title: summaryC
                              .summaryModel.value!.bookingRespons.service_name
                              .toString(),
                          size: isMobile ? 12.sp : 12,
                          weight: FontWeight.w400,
                        )),
                      ],
                    ),
                  ),
                  ResponsiveRowColumnItem(
                    child: ResponsiveRowColumn(
                      layout: ResponsiveRowColumnType.COLUMN,
                      columnCrossAxisAlignment: CrossAxisAlignment.end,
                      columnSpacing: 6,
                      children: [
                        ResponsiveRowColumnItem(
                            child: ResponsiveRowColumn(
                          layout: ResponsiveRowColumnType.ROW,
                          rowSpacing: 2,
                          children: [
                            ResponsiveRowColumnItem(
                              child: SvgPicture.asset(
                                AppIcons.calendarCircle,
                                color: AppColor.kLightTitleColor,
                              ),
                            ),
                            ResponsiveRowColumnItem(
                                child: TextComponents(
                              color: AppColor.kLightTitleColor,
                              title: 'Date',
                              size: isMobile ? 12.sp : 12,
                              weight: FontWeight.w400,
                            ))
                          ],
                        )),
                        ResponsiveRowColumnItem(
                            child: TextComponents(
                          color: AppColor.kWhiteColor,
                          title: summaryC
                              .summaryModel.value!.bookingRespons.booking_date
                              .toString(),
                          size: isMobile ? 12.sp : 12,
                          weight: FontWeight.w400,
                        )),
                      ],
                    ),
                  )
                ],
              )),
              ResponsiveRowColumnItem(
                child: 27.heightSpace,
              ),
              // row 2
              ResponsiveRowColumnItem(
                  child: ResponsiveRowColumn(
                layout: ResponsiveRowColumnType.ROW,
                rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ResponsiveRowColumnItem(
                    child: ResponsiveRowColumn(
                      layout: ResponsiveRowColumnType.COLUMN,
                      columnCrossAxisAlignment: CrossAxisAlignment.start,
                      columnSpacing: 6,
                      children: [
                        ResponsiveRowColumnItem(
                            child: ResponsiveRowColumn(
                          layout: ResponsiveRowColumnType.ROW,
                          rowSpacing: 2,
                          children: [
                            ResponsiveRowColumnItem(
                              child: SvgPicture.asset(
                                AppIcons.clockCircle,
                                color: AppColor.kLightTitleColor,
                              ),
                            ),
                            ResponsiveRowColumnItem(
                                child: TextComponents(
                              color: AppColor.kLightTitleColor,
                              title: 'Time',
                              size: isMobile ? 12.sp : 12,
                              weight: FontWeight.w400,
                            ))
                          ],
                        )),
                        ResponsiveRowColumnItem(
                            child: TextComponents(
                          color: AppColor.kWhiteColor,
                          title: summaryC
                              .summaryModel.value!.bookingRespons.timeslot,
                          size: isMobile ? 12.sp : 12,
                          weight: FontWeight.w400,
                        )),
                      ],
                    ),
                  ),
                  ResponsiveRowColumnItem(
                    child: ResponsiveRowColumn(
                      layout: ResponsiveRowColumnType.COLUMN,
                      columnCrossAxisAlignment: CrossAxisAlignment.end,
                      columnSpacing: 6,
                      children: [
                        ResponsiveRowColumnItem(
                            child: ResponsiveRowColumn(
                          layout: ResponsiveRowColumnType.ROW,
                          rowSpacing: 2,
                          children: [
                            ResponsiveRowColumnItem(
                              child: SvgPicture.asset(
                                AppIcons.clockCircle,
                                color: AppColor.kLightTitleColor,
                              ),
                            ),
                            ResponsiveRowColumnItem(
                                child: TextComponents(
                              color: AppColor.kLightTitleColor,
                              title: 'Duration',
                              size: isMobile ? 12.sp : 12,
                              weight: FontWeight.w400,
                            ))
                          ],
                        )),
                        ResponsiveRowColumnItem(
                            child: Obx(() => TextComponents(
                                  color: AppColor.kWhiteColor,
                                  title: '${summaryC.totalHour.value} hours',
                                  size: isMobile ? 12.sp : 12,
                                  weight: FontWeight.w400,
                                ))),
                      ],
                    ),
                  )
                ],
              )),
            ],
          ),
        )),
        ResponsiveRowColumnItem(
          child: 9.heightSpace,
        ),
        ResponsiveRowColumnItem(
          child: TextComponents(
            color: Colors.white,
            title: 'Payment ',
            size: isMobile ? 16.sp : 16,
            weight: FontWeight.bold,
          ),
        ),
        ResponsiveRowColumnItem(
          child: 9.heightSpace,
        ),
        ResponsiveRowColumnItem(
            child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: isMobile ? 7.w : 7,
            vertical: isMobile ? 8.h : 8,
          ),
          width: isMobile ? 343.w : 512,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(isMobile ? 15.r : 15),
            color: AppColor.kBlck23,
          ),
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            trailing: TextComponents(
              color: Colors.white,
              title: summaryC.summaryModel.value!.bookingRespons.total_amount
                  .toString(),
              size: isMobile ? 12.sp : 12,
              weight: FontWeight.w500,
            ),
            title: TextComponents(
              color: Colors.white,
              title: 'Total (KWD)',
              size: isMobile ? 12.sp : 12,
              weight: FontWeight.w500,
            ),
          ),
        )),
        ResponsiveRowColumnItem(
          child: 22.heightSpace,
        ),
        ResponsiveRowColumnItem(
            child: PrimaryButton(
                width: isMobile ? 346.w : 512,
                height: isMobile ? 56.h : 56,
                onTap: () {
                  Get.to(() => PaymentWeb(
                          url: summaryC.summaryModel.value!.url.toString(),
                        ));
                    Get.find<HomeController>().isLocationSelected = true.obs;
                },
                childWidget: TextComponents(
                  title: "Pay Now",
                  size: isMobile ? 16.sp : 16,
                  color: AppColor.kWhiteColor,
                  weight: FontWeight.w400,
                ),
                bgColor: AppColor.kGreen1Color)),
        ResponsiveRowColumnItem(
          child: 20.heightSpace,
        ),
      ],
    );
  }
}

class ResUseableContainer extends StatelessWidget {
  const ResUseableContainer({
    super.key,
    required this.isMobile,
    required this.title,
    required this.appIcon,
    required this.subTitle,
  });

  final bool isMobile;
  final String title, subTitle;
  final String appIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 7.w : 7,
        vertical: isMobile ? 8.h : 8,
      ),
      width: isMobile ? 343.w : 512,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(isMobile ? 15.r : 15),
        color: AppColor.kBlck23,
      ),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: Container(
          width: 44,
          height: 44,
          decoration: BoxDecoration(
              color: AppColor.kWhiteColor, shape: BoxShape.circle),
          child: Center(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(appIcon),
          )),
        ),
        title: TextComponents(
          color: Colors.white,
          title: title,
          size: isMobile ? 12.sp : 12,
          weight: FontWeight.w500,
        ),
        subtitle: TextComponents(
          color: Colors.white,
          title: subTitle,
          size: isMobile ? 12.sp : 12,
          weight: FontWeight.w500,
        ),
      ),
    );
  }
}

class ResUseableTwoContainer extends StatelessWidget {
  const ResUseableTwoContainer({
    super.key,
    required this.isMobile,
    required this.title,
    required this.appIcon,
  });

  final bool isMobile;
  final String title;
  final String appIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 7.w : 7,
        vertical: isMobile ? 8.h : 8,
      ),
      width: isMobile ? 343.w : 512,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(isMobile ? 15.r : 15),
        color: AppColor.kBlck23,
      ),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: Container(
          width: 44,
          height: 44,
          decoration: BoxDecoration(
              color: AppColor.kWhiteColor, shape: BoxShape.circle),
          child: Center(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(appIcon),
          )),
        ),
        title: TextComponents(
          color: Colors.white,
          title: title,
          size: isMobile ? 12.sp : 12,
          weight: FontWeight.w500,
        ),
      ),
    );
  }
}
