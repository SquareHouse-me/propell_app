import 'package:propell/configs/generalWidgets/appBar/app_bar.dart';
import 'package:propell/configs/generalWidgets/appBar/web_appbar.dart';
import 'package:propell/configs/generalWidgets/doted_lines.dart';
import 'package:propell/configs/generalWidgets/export_general.dart';
import 'package:propell/configs/generalWidgets/primary_button.dart';
import 'package:propell/configs/generalWidgets/textstyle_component.dart';
import 'package:propell/configs/res/colors.dart';
import 'package:propell/configs/res/icons.dart';
import 'package:propell/configs/utlis/extension.dart';
import 'package:propell/configs/utlis/validation_utils.dart';
import 'package:propell/data/network/export_view.dart';
import 'package:propell/data/repository/summary_repo.dart';
import 'package:propell/data/response/status.dart';
import 'package:propell/main.dart';
import 'package:propell/viewModels/controllers/summary_controller.dart';
import 'package:propell/viewModels/controllers/theme_controller.dart';
import 'package:propell/views/dashBoard/home_view.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'dart:html' as html;

class ThankyouDialog {
  static showLocationDialog(BuildContext context) {
    bool isMobile = ResponsiveBreakpoints.of(context).isMobile;

    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Padding(
          padding: EdgeInsets.only(bottom: 20.h),
          child: Dialog(
            backgroundColor: AppColor.kPrimary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(isMobile ? 20.r : 20.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                  height: isMobile ? null : 400,
                  child: ResponsiveRowColumn(
                    layout: ResponsiveRowColumnType.COLUMN,
                    columnMainAxisSize: MainAxisSize.min,
                    columnCrossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ResponsiveRowColumnItem(
                        child: 40.heightSpace,
                      ),
                      ResponsiveRowColumnItem(
                          child: SvgPicture.asset(AppIcons.thankyou)),
                      ResponsiveRowColumnItem(
                        child: 24.heightSpace,
                      ),
                      ResponsiveRowColumnItem(
                          child: TextComponents(
                        color: AppColor.kGreen1Color,
                        title: 'Thank You',
                        size: isMobile ? 26.sp : 26,
                        weight: FontWeight.w600,
                      )),
                      ResponsiveRowColumnItem(
                        child: 12.heightSpace,
                      ),
                      ResponsiveRowColumnItem(
                          child: TextComponents(
                        color: AppColor.kWhiteColor,
                        title: 'payment successful done',
                        size: isMobile ? 18.sp : 18,
                        weight: FontWeight.w400,
                      )),
                      ResponsiveRowColumnItem(
                        child: 50.heightSpace,
                      ),
                      ResponsiveRowColumnItem(
                          child: PrimaryButton(
                              width: isMobile ? 295.w : 295,
                              height: isMobile ? 55.h : 55,
                              onTap: () {
                                Get.offAll(() => HomeView());
                              },
                              childWidget: TextComponents(
                                title: "ok",
                                size: isMobile ? 16.sp : 16,
                                color: AppColor.kWhiteColor,
                                weight: FontWeight.w400,
                              ),
                              bgColor: AppColor.kGreen1Color))
                    ],
                  )),
            ),
          ),
        );
      },
    );
  }
}

class ThankyouDialogPage extends StatefulWidget {
  ThankyouDialogPage({super.key});

  @override
  State<ThankyouDialogPage> createState() => _ThankyouDialogPageState();
}

class _ThankyouDialogPageState extends State<ThankyouDialogPage> {
  ThemeController themeController = Get.put(ThemeController(), permanent: true);
  SummaryController summaryController = Get.put(
    SummaryController(
      summaryRepo: getIt<SummaryRepo>(),
    ),
    permanent: true,
  );

  String bookingId = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    check();
  }

  check() async {
    bookingId = Get.parameters['id'] ?? '128';
    if (bookingId.isNotEmpty) {
      log("Captured Booking ID: $bookingId");

      Future.delayed(const Duration(seconds: 1), () async {
        await summaryController.thankyouDataGet(bookingId);
      });
      log(bookingId.toString() + " boking idd--------");
    } else {
      log("No Booking ID found in URL");
    }
  }

  @override
  Widget build(BuildContext context) {
    bool isMobile = ResponsiveBreakpoints.of(context).isMobile;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(isMobile ? 60 : 100),
          child: isMobile
              ? AppbarWidget(
                  title: '',
                  isFirstPage: false,
                )
              : WebAppbarWidget()),
      body: Obx(() => summaryController.thankYouStatus.value == Status.LOADING
          ? Center(
              child: getIndicator(),
            )
          : summaryController.thankYouStatus.value == Status.COMPLETED
              ? SingleChildScrollView(
                  reverse: true,
                  physics: const ClampingScrollPhysics(),
                  child: Center(
                    child: SizedBox(
                      width: isMobile ? 347.w : 512,
                      child: ResponsiveRowColumn(
                        columnCrossAxisAlignment: CrossAxisAlignment.start,
                        layout: ResponsiveRowColumnType.COLUMN,
                        children: [
                          ResponsiveRowColumnItem(
                            child: ResponsiveRowColumn(
                              columnCrossAxisAlignment:
                                  CrossAxisAlignment.start,
                              layout: ResponsiveRowColumnType.ROW,
                              children: [
                                const ResponsiveRowColumnItem(
                                  child: CircleAvatar(
                                    backgroundColor: AppColor.kGreen1Color,
                                    radius: 20,
                                    child: Icon(Icons.check,
                                        color: Colors.white, size: 25),
                                  ),
                                ),
                                const ResponsiveRowColumnItem(
                                    child: SizedBox(width: 10)),
                                ResponsiveRowColumnItem(
                                  child: ResponsiveRowColumn(
                                    columnCrossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    layout: ResponsiveRowColumnType.COLUMN,
                                    children: [
                                      ResponsiveRowColumnItem(
                                        child: TextComponents(
                                          color:
                                              themeController.isDarkMode.value
                                                  ? Colors.white
                                                  : AppColor.kPrimary2,
                                          title: 'Thank You',
                                          size: isMobile ? 20.sp : 20,
                                          weight: FontWeight.w600,
                                        ),
                                      ),
                                      ResponsiveRowColumnItem(
                                        child: TextComponents(
                                          color:
                                              themeController.isDarkMode.value
                                                  ? Colors.white
                                                  : AppColor.kPrimary2,
                                          title:
                                              'Your Appointment has been book',
                                          size: isMobile ? 16.sp : 16,
                                          weight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const ResponsiveRowColumnItem(
                              child: SizedBox(height: 20)),
                          ResponsiveRowColumnItem(
                              child: TextComponents(
                            color: themeController.isDarkMode.value
                                ? AppColor.kWhiteColor
                                : AppColor.kDarkTitleColor,
                            title: 'Appointment Details',
                            size: isMobile ? 16.sp : 16,
                            weight: FontWeight.w600,
                          )),
                          const ResponsiveRowColumnItem(
                              child: SizedBox(height: 8)),
                          ResponsiveRowColumnItem(
                              child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: isMobile ? 16.w : 16,
                              vertical: isMobile ? 11.h : 11,
                            ).copyWith(
                              bottom: isMobile ? 13.h : 13,
                              right: isMobile ? 13.h : 13,
                            ),
                            width: isMobile ? 343.w : 512,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(isMobile ? 15.r : 15),
                                color: themeController.isDarkMode.value
                                    ? AppColor.kBlck23
                                    : const Color(0XFFB7B7B7).withOpacity(0.4)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextComponents(
                                  color: themeController.isDarkMode.value
                                      ? AppColor.kWhiteColor
                                      : AppColor.kDarkTitleColor,
                                  title:
                                      '${summaryController.thankYouModel.value.bookingRespons.name},',
                                  size: isMobile ? 16.sp : 16,
                                  weight: FontWeight.w600,
                                ),
                                const SizedBox(height: 8),
                                _detailRow(
                                    "Appointment:",
                                    summaryController.thankYouModel.value
                                        .bookingRespons.category_name,
                                    isMobile),
                                const SizedBox(height: 8),
                                DottedLine(
                                  dashColor: themeController.isDarkMode.value
                                      ? AppColor.kWhiteColor
                                      : AppColor.kDarkTitleColor,
                                  dashLength: 12,
                                  dashGapLength: 6,
                                  lineThickness: 0.2,
                                ),
                                const SizedBox(height: 8),
                                _detailRow(
                                    "Service:",
                                    summaryController.thankYouModel.value
                                        .bookingRespons.service_name,
                                    color: Colors.green,
                                    isMobile),
                                const SizedBox(height: 8),
                                DottedLine(
                                  dashColor: themeController.isDarkMode.value
                                      ? AppColor.kWhiteColor
                                      : AppColor.kDarkTitleColor,
                                  dashLength: 12,
                                  dashGapLength: 6,
                                  lineThickness: 0.2,
                                ),
                                const SizedBox(height: 8),
                                _detailRow(
                                    "Consultant:",
                                    summaryController.thankYouModel.value
                                        .bookingRespons.consultation_name,
                                    isMobile),
                                const SizedBox(height: 8),
                                DottedLine(
                                  dashColor: themeController.isDarkMode.value
                                      ? AppColor.kWhiteColor
                                      : AppColor.kDarkTitleColor,
                                  dashLength: 12,
                                  dashGapLength: 6,
                                  lineThickness: 0.2,
                                ),
                                const SizedBox(height: 8),
                                _detailRow(
                                    "Date:",
                                    summaryController.thankYouModel.value
                                        .bookingRespons.booking_date,
                                    isMobile),
                                const SizedBox(height: 8),
                                DottedLine(
                                  dashColor: themeController.isDarkMode.value
                                      ? AppColor.kWhiteColor
                                      : AppColor.kDarkTitleColor,
                                  dashLength: 12,
                                  dashGapLength: 6,
                                  lineThickness: 0.2,
                                ),
                                const SizedBox(height: 8),
                                _detailRow(
                                    "Time:",
                                    summaryController.thankYouModel.value
                                        .bookingRespons.timeslot,
                                    isMobile),
                              ],
                            ),
                          )),
                          const ResponsiveRowColumnItem(
                              child: SizedBox(height: 27)),
                          ResponsiveRowColumnItem(
                              child: TextComponents(
                            color: themeController.isDarkMode.value
                                ? AppColor.kWhiteColor
                                : AppColor.kDarkTitleColor,
                            title: 'Appointment Details',
                            size: isMobile ? 16.sp : 16,
                            weight: FontWeight.w600,
                          )),
                          ResponsiveRowColumnItem(
                            child: 9.heightSpace,
                          ),
                          ResponsiveRowColumnItem(
                              child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: isMobile ? 16.w : 16,
                              vertical: isMobile ? 11.h : 11,
                            ).copyWith(
                              bottom: isMobile ? 13.h : 13,
                              right: isMobile ? 13.h : 13,
                            ),
                            width: isMobile ? 343.w : 512,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(isMobile ? 15.r : 15),
                                color: themeController.isDarkMode.value
                                    ? AppColor.kBlck23
                                    : const Color(0XFFB7B7B7).withOpacity(0.4)),
                            child: Column(
                              children: [
                                _detailRow(
                                    "Paid Amount:",
                                    summaryController.thankYouModel.value
                                        .bookingRespons.total_amount
                                        .toString(),
                                    isMobile),
                                const SizedBox(height: 8),
                                DottedLine(
                                  dashColor: themeController.isDarkMode.value
                                      ? AppColor.kWhiteColor
                                      : AppColor.kDarkTitleColor,
                                  dashLength: 12,
                                  dashGapLength: 6,
                                  lineThickness: 0.2,
                                ),
                                const SizedBox(height: 8),
                                _detailRow(
                                    "Transactions ID:",
                                    summaryController.thankYouModel.value
                                        .bookingRespons.transaction_id,
                                    isMobile),
                              ],
                            ),
                          )),
                          ResponsiveRowColumnItem(
                            child: 23.heightSpace,
                          ),
                          ResponsiveRowColumnItem(
                              child: PrimaryButton(
                                  width: double.infinity,
                                  height: isMobile ? 55.h : 55,
                                  onTap: () async {
                                    // SharedPreferences prefs =
                                    //     await SharedPreferences.getInstance();
                                    // await prefs.setString('bookingId', '');
                                    openInWindow(
                                        "https://book.propell.design/HomeView");
                                  },
                                  childWidget: TextComponents(
                                    title: "Home",
                                    size: isMobile ? 16.sp : 16,
                                    color: AppColor.kWhiteColor,
                                    weight: FontWeight.w400,
                                  ),
                                  bgColor: AppColor.kGreen1Color)),
                          ResponsiveRowColumnItem(
                            child: 23.heightSpace,
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              : Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextComponents(
                      color: themeController.isDarkMode.value
                          ? AppColor.kWhiteColor
                          : AppColor.kGreen1Color,
                      title: 'something went wrong..',
                      size: isMobile ? 16.sp : 16,
                      weight: FontWeight.w400,
                      textAlign: TextAlign.center,
                    ),
                  ),
                )),
    );
  }

  void openInWindow(String uri) {
    html.window.location.replace(uri);
  }

  Widget _detailRow(String label, String value, bool isMobile,
      {Color color = Colors.white}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextComponents(
            color: themeController.isDarkMode.value
                ? const Color(0XFFB7B7B7)
                : AppColor.kPrimary2,
            title: label,
            size: isMobile ? 12.sp : 12,
            weight: FontWeight.w500,
          ),
          TextComponents(
            color: themeController.isDarkMode.value
                ? Colors.white
                : AppColor.kPrimary2,
            title: value,
            size: isMobile ? 12.sp : 12,
            weight: FontWeight.w500,
          ),
        ],
      ),
    );
  }
}
