// ignore_for_file: avoid_web_libraries_in_flutter

import 'package:propell/configs/generalWidgets/export_general.dart';
import 'package:propell/configs/generalWidgets/primary_button.dart';
import 'package:propell/configs/generalWidgets/textstyle_component.dart';
import 'package:propell/configs/res/colors.dart';
import 'package:propell/configs/res/icons.dart';
import 'package:propell/configs/utlis/extension.dart';
import 'package:propell/configs/utlis/validation_utils.dart';
import 'package:propell/viewModels/controllers/home_controller.dart';
import 'package:propell/viewModels/controllers/summary_controller.dart';
import 'package:propell/viewModels/controllers/theme_controller.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'dart:html' as html;

class StepTwo extends StatelessWidget {
  StepTwo({super.key});
  ThemeController themeController = Get.find<ThemeController>();
  final SummaryController summaryC = Get.find<SummaryController>();
  @override
  Widget build(BuildContext context) {
    print(summaryC.summaryModel.value.bookingRespons.service_images);
    print(summaryC.summaryModel.value.bookingRespons.consultation_image);

    checkForRedirect();
    summaryC.calculateTotal(
        timeSlot: summaryC.summaryModel.value.bookingRespons.timeslot);
    bool isMobile = ResponsiveBreakpoints.of(context).isMobile;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: isMobile ? 10.w : 10),
      child: ResponsiveRowColumn(
        columnCrossAxisAlignment: CrossAxisAlignment.start,
        layout: ResponsiveRowColumnType.COLUMN,
        children: [
          ResponsiveRowColumnItem(
            child: TextComponents(
              color: themeController.isDarkMode.value
                  ? AppColor.kWhiteColor
                  : AppColor.kDarkTitleColor,
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
              appIcon:
                  summaryC.summaryModel.value.bookingRespons.category_image,
              title: summaryC.summaryModel.value.bookingRespons.category_name
                  .toString(),
              subTitle: '',
            ),
          ),
          ResponsiveRowColumnItem(
            child: 9.heightSpace,
          ),
          ResponsiveRowColumnItem(
            child: TextComponents(
              color: themeController.isDarkMode.value
                  ? AppColor.kWhiteColor
                  : AppColor.kDarkTitleColor,
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
              appIcon: summaryC
                  .summaryModel.value.bookingRespons.consultation_image,
              title: summaryC
                  .summaryModel.value.bookingRespons.consultation_name
                  .toString(),
            ),
          ),
          ResponsiveRowColumnItem(
            child: 9.heightSpace,
          ),
          ResponsiveRowColumnItem(
            child: TextComponents(
              color: themeController.isDarkMode.value
                  ? AppColor.kWhiteColor
                  : AppColor.kDarkTitleColor,
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
              color: themeController.isDarkMode.value
                  ? AppColor.kBlck23
                  : AppColor.kCalenderWhite,
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
                                child: Image.network(
                                  color: AppColor.kLightTitleColor,
                                  summaryC.summaryModel.value.bookingRespons
                                      .service_images, // URL of the image
                                  width: 20,
                                  height: 20,
                                  fit: BoxFit.fitHeight,
                                  loadingBuilder: (BuildContext context,
                                      Widget child,
                                      ImageChunkEvent? loadingProgress) {
                                    if (loadingProgress == null)
                                      return child; // Return the image once loaded
                                    return getIndicator(); // Show the custom loading indicator
                                  },
                                  errorBuilder: (BuildContext context,
                                      Object error, StackTrace? stackTrace) {
                                    return Icon(
                                      Icons.error,
                                      color: AppColor
                                          .kGreen1Color, // Custom error icon and color
                                    );
                                  },
                                ),
                              ),
                              ResponsiveRowColumnItem(
                                child: 6.widthSpace,
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
                            color: themeController.isDarkMode.value
                                ? Colors.white
                                : AppColor.kPrimary2,
                            title: summaryC
                                .summaryModel.value.bookingRespons.service_name
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
                            color: themeController.isDarkMode.value
                                ? Colors.white
                                : AppColor.kPrimary2,
                            title: summaryC
                                .summaryModel.value.bookingRespons.booking_date
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
                            color: themeController.isDarkMode.value
                                ? Colors.white
                                : AppColor.kPrimary2,
                            title: summaryC
                                .summaryModel.value.bookingRespons.timeslot,
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
                                    color: themeController.isDarkMode.value
                                        ? Colors.white
                                        : AppColor.kPrimary2,
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
              color: themeController.isDarkMode.value
                  ? AppColor.kWhiteColor
                  : AppColor.kDarkTitleColor,
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
              color: themeController.isDarkMode.value
                  ? AppColor.kBlck23
                  : AppColor.kCalenderWhite,
            ),
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              trailing: TextComponents(
                color: themeController.isDarkMode.value
                    ? Colors.white
                    : AppColor.kPrimary2,
                title: summaryC.summaryModel.value.bookingRespons.total_amount
                    .toString(),
                size: isMobile ? 12.sp : 12,
                weight: FontWeight.w500,
              ),
              title: TextComponents(
                color: themeController.isDarkMode.value
                    ? Colors.white
                    : AppColor.kPrimary2,
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
                    // if (kIsWeb) {
                    //   Get.to(() => PaymentWeb(
                    //         url:
                    //             'https://demo.MyFatoorah.com/KWT/ie/01072494389642-b9b2dec3',
                    //       ));
                    //   Get.find<HomeController>().isLocationSelected = true.obs;
                    // } else {
                    // Get.to(() => PaymentWeb(
                    //       url: summaryC.summaryModel.value!.url.toString(),
                    //     ));
                    print(summaryC.summaryModel.value.url.toString());

                    openInWindow(
                      summaryC.summaryModel.value.url.toString(),
                    );

                    // Get.to(() => PaymentWeb(
                    //       url:
                    //           'https://apiv2.upayments.com/?session_id=2025150609190118259129381892199159518764419895',
                    //     ));
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
      ),
    );
  }

  void openInWindow(String uri) {
    html.window.location.replace(uri);
    // Redirect user
  }

// Later, when your app reloads
  void checkForRedirect() {
    final hash = html.window.location.hash;
    if (hash.contains("https://book.propell.design/#/ThankyouDialogPage")) {
      print("Fragment received: $hash");
      // Handle the fragment
    }
  }
}

class ResUseableContainer extends StatelessWidget {
  ResUseableContainer({
    super.key,
    required this.isMobile,
    required this.title,
    required this.appIcon,
    required this.subTitle,
  });

  final bool isMobile;
  final String title, subTitle;
  final String appIcon;

  ThemeController themeController = Get.find<ThemeController>();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 7.w : 7,
        vertical: isMobile ? 8.h : 8,
      ),
      width: isMobile ? 343.w : 512,
      decoration: BoxDecoration(
        color: themeController.isDarkMode.value
            ? AppColor.kBlck23
            : AppColor.kCalenderWhite,
        borderRadius: BorderRadius.circular(isMobile ? 15.r : 15),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.network(
            appIcon, // URL of the image
            width: 34,
            height: 34,
            color:
                themeController.isDarkMode.value ? null : AppColor.kGreen1Color,
            fit: BoxFit.cover,
            loadingBuilder: (BuildContext context, Widget child,
                ImageChunkEvent? loadingProgress) {
              if (loadingProgress == null)
                return child; // Return the image once loaded
              return getIndicator(); // Show the custom loading indicator
            },
            errorBuilder:
                (BuildContext context, Object error, StackTrace? stackTrace) {
              return const Icon(
                Icons.error,
                color: AppColor.kGreen1Color, // Custom error icon and color
              );
            },
          ),
        ),
        title: TextComponents(
          color: themeController.isDarkMode.value
              ? Colors.white
              : AppColor.kPrimary2,
          title: title,
          size: isMobile ? 12.sp : 12,
          weight: FontWeight.w500,
        ),
      ),
    );
  }
}

class ResUseableTwoContainer extends StatelessWidget {
  ResUseableTwoContainer({
    super.key,
    required this.isMobile,
    required this.title,
    required this.appIcon,
  });

  final bool isMobile;
  final String title;
  final String appIcon;

  ThemeController themeController = Get.find<ThemeController>();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 7.w : 7,
        vertical: isMobile ? 8.h : 8,
      ),
      width: isMobile ? 343.w : 512,
      decoration: BoxDecoration(
        color: themeController.isDarkMode.value
            ? AppColor.kBlck23
            : AppColor.kCalenderWhite,
        borderRadius: BorderRadius.circular(isMobile ? 15.r : 15),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: Container(
          width: 44,
          height: 44,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: NetworkImage(
                appIcon, // URL of the image
              ),
              fit: BoxFit.cover,
              onError: (exception, stackTrace) {},
            ),
          ),
        ),
        title: TextComponents(
          color: themeController.isDarkMode.value
              ? Colors.white
              : AppColor.kPrimary2,
          title: title,
          size: isMobile ? 12.sp : 12,
          weight: FontWeight.w500,
        ),
      ),
    );
  }
}
