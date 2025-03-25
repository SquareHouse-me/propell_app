import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:propell/configs/res/icons.dart';
import 'package:propell/configs/utlis/validation_utils.dart';
import 'package:propell/data/response/status.dart';
import 'package:propell/main.dart';
import 'package:propell/viewModels/controllers/theme_controller.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:propell/configs/generalWidgets/appBar/app_bar.dart';
import 'package:propell/configs/generalWidgets/appBar/web_appbar.dart';
import 'package:propell/configs/generalWidgets/primary_button.dart';
import 'package:propell/configs/generalWidgets/textstyle_component.dart';
import 'package:propell/configs/res/colors.dart';
import 'package:propell/configs/utlis/extension.dart';
import 'package:propell/viewModels/controllers/home_controller.dart';

class BookingCalander extends StatefulWidget {
  const BookingCalander({Key? key}) : super(key: key);

  @override
  State<BookingCalander> createState() => _BookingCalanderState();
}

class _BookingCalanderState extends State<BookingCalander> {
  final homeC = Get.find<HomeController>();
  @override
  void initState() {
    super.initState();
    // homeC.setTimeSlotStatus(Status.LOADING);
    // homeC.setTimeSlotStatus(Status.COMPLETED);

    print("${homeC.consultationId} consultationId");

    print(" date   ${homeC.selectedDate.value}");
    String formattedDate = DateFormat(
      'yyyy-MM-dd',
    ).format(homeC.selectedDate.value);

    homeC.consultCheck.value.status.toString() == 'inactive'
        ? null
        : homeC.timeSlotApi(
          consultationId: homeC.consultationId.toString(),
          date: formattedDate,
        );
    print(homeC.consultCheck.value.status.toString() + " status");
  }

  ThemeController themeController = Get.find<ThemeController>();
  @override
  void dispose() {
    super.dispose();
    homeC.timeSlotList.value = [];
    homeC.selectedDate.value = DateTime.now();
    homeC.focusedDay.value = DateTime.now();
    homeC.selectedTimeId.value = '-1';
  }

  var filteredList = [];
  @override
  Widget build(BuildContext context) {
    bool isMobile = ResponsiveBreakpoints.of(context).isMobile;

    homeC.userAvailabilityApi();
    return Scaffold(
      // bottomNavigationBar: Padding(
      //   padding: EdgeInsets.symmetric(
      //     horizontal: ResponsiveBreakpoints.of(context).isMobile ? 16.sp : 465,
      //   ),
      //   child: ,
      // ),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(isMobile ? 60 : 100),
        child:
            ResponsiveBreakpoints.of(context).isMobile
                ? AppbarWidget(title: '', isFirstPage: false)
                : WebAppbarWidget(),
      ),
      body: Obx(
        () =>
            homeC.consultCheck.value.status.toString() == 'inactive' &&
                    homeC.consultCheckStatus.value == Status.COMPLETED
                ? Center(
                  child: Padding(
                    padding: const EdgeInsets.all(
                      8.0,
                    ).copyWith(top: isMobile ? 150.h : 150),
                    child: Container(
                      width: isMobile ? null : 600,
                      padding: EdgeInsets.symmetric(
                        horizontal: isMobile ? 8.w : 8,
                        vertical: isMobile ? 14.h : 14,
                      ),
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            themeController.isDarkMode.value
                                ? AppIcons.travelingWhite
                                : AppIcons.travelingBlue,
                          ),
                          8.heightSpace,
                          TextComponents(
                            title: homeC.consultCheck.value.title,
                            size: isMobile ? 14.sp : 20,
                            color:
                                themeController.isDarkMode.value
                                    ? AppColor.kWhiteColor
                                    : AppColor.kGreen1Color,
                            weight: FontWeight.w500,
                          ),
                          8.heightSpace,
                          TextComponents(
                            title: homeC.consultCheck.value.content,
                            size: isMobile ? 10.sp : 12,
                            color:
                                themeController.isDarkMode.value
                                    ? AppColor.kWhiteColor
                                    : AppColor.kGreen1Color,
                            weight: FontWeight.w400,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                )
                : homeC.consultCheckStatus.value == Status.LOADING
                ? Center(child: getIndicator())
                : SingleChildScrollView(
                  padding: EdgeInsets.zero,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal:
                          ResponsiveBreakpoints.of(context).isMobile
                              ? 15.h
                              : 15,
                      vertical:
                          ResponsiveBreakpoints.of(context).isMobile ? 0.h : 27,
                    ),
                    child: Center(
                      child: ResponsiveRowColumn(
                        columnCrossAxisAlignment: CrossAxisAlignment.start,
                        columnMainAxisAlignment: MainAxisAlignment.start,
                        layout: ResponsiveRowColumnType.COLUMN,
                        children: [
                          ResponsiveRowColumnItem(
                            child: Obx(
                              () => TextComponents(
                                title: "selectDate".tr,
                                size:
                                    ResponsiveBreakpoints.of(context).isMobile
                                        ? 14.sp
                                        : 14,
                                color:
                                    themeController.isDarkMode.value
                                        ? AppColor.kWhiteColor
                                        : AppColor.kGreen1Color,
                                weight: FontWeight.bold,
                              ),
                            ),
                          ),
                          ResponsiveRowColumnItem(child: 8.heightSpace),
                          ResponsiveRowColumnItem(
                            child: Obx(
                              () => Container(
                                width:
                                    ResponsiveBreakpoints.of(context).isMobile
                                        ? null
                                        : 346,
                                padding: EdgeInsets.symmetric(
                                  horizontal:
                                      ResponsiveBreakpoints.of(context).isMobile
                                          ? 8.w
                                          : 8,
                                  vertical:
                                      ResponsiveBreakpoints.of(context).isMobile
                                          ? 14.h
                                          : 14,
                                ),
                                decoration: BoxDecoration(
                                  color:
                                      themeController.isDarkMode.value
                                          ? AppColor.kBlck23
                                          : AppColor.kWhiteColor,
                                  borderRadius: BorderRadius.circular(
                                    ResponsiveBreakpoints.of(context).isMobile
                                        ? 8.h
                                        : 8,
                                  ),
                                ),
                                child: TableCalendar(
                                  daysOfWeekHeight: 30,
                                  headerStyle: HeaderStyle(
                                    // decoration: BoxDecoration(color: AppColor.kPrimary2),
                                    formatButtonVisible: false,
                                    titleCentered: true,

                                    titleTextStyle:
                                        homeC.languageCode.value == 'ar'
                                            ? TextStyle(
                                              color:
                                                  themeController
                                                          .isDarkMode
                                                          .value
                                                      ? Colors.white
                                                      : AppColor
                                                          .kCalenderHeaderWeeklyColor,
                                              fontFamily: 'NotoKufiArabic',
                                              fontSize:
                                                  ResponsiveBreakpoints.of(
                                                        context,
                                                      ).isMobile
                                                      ? 14.sp
                                                      : 14,
                                              fontWeight: FontWeight.w500,
                                            )
                                            : TextStyle(
                                              color:
                                                  themeController
                                                          .isDarkMode
                                                          .value
                                                      ? Colors.white
                                                      : AppColor
                                                          .kCalenderHeaderWeeklyColor,
                                              fontFamily: 'Montserrat',
                                              fontSize:
                                                  ResponsiveBreakpoints.of(
                                                        context,
                                                      ).isMobile
                                                      ? 14.sp
                                                      : 14,
                                              fontWeight: FontWeight.w500,
                                            ),
                                    leftChevronIcon: const Icon(
                                      Icons.chevron_left,
                                      color: AppColor.kLightIconsColor,
                                    ),
                                    rightChevronIcon: const Icon(
                                      Icons.chevron_right,
                                      color: AppColor.kLightIconsColor,
                                    ),
                                  ),
                                  startingDayOfWeek: StartingDayOfWeek.monday,
                                  daysOfWeekStyle: DaysOfWeekStyle(
                                    dowTextFormatter:
                                        (date, locale) => DateFormat.E(
                                          locale,
                                        ).format(date).substring(0, 1),
                                    decoration: BoxDecoration(
                                      color:
                                          themeController.isDarkMode.value
                                              ? AppColor.kPrimary2
                                              : AppColor.kCalenderHeaderColor,
                                    ),
                                    weekdayStyle:
                                        homeC.languageCode.value == 'ar'
                                            ? TextStyle(
                                              color:
                                                  themeController
                                                          .isDarkMode
                                                          .value
                                                      ? Colors.white
                                                      : AppColor
                                                          .kCalenderHeaderWeeklyColor,
                                              fontFamily: 'NotoKufiArabic',
                                            )
                                            : TextStyle(
                                              color:
                                                  themeController
                                                          .isDarkMode
                                                          .value
                                                      ? Colors.white
                                                      : AppColor
                                                          .kCalenderHeaderWeeklyColor,
                                              fontFamily: 'Montserrat',
                                            ),
                                    weekendStyle:
                                        homeC.languageCode.value == 'ar'
                                            ? TextStyle(
                                              color:
                                                  themeController
                                                          .isDarkMode
                                                          .value
                                                      ? Colors.white
                                                      : AppColor
                                                          .kCalenderHeaderWeeklyColor,
                                              fontFamily: 'NotoKufiArabic',
                                            )
                                            : TextStyle(
                                              color:
                                                  themeController
                                                          .isDarkMode
                                                          .value
                                                      ? Colors.white
                                                      : AppColor
                                                          .kCalenderHeaderWeeklyColor,
                                              fontFamily: 'Montserrat',
                                            ),
                                  ),
                                  calendarStyle: CalendarStyle(
                                    markerMargin: EdgeInsets.zero,
                                    cellMargin: EdgeInsets.zero,
                                    defaultTextStyle:
                                        homeC.languageCode.value == 'ar'
                                            ? TextStyle(
                                              color:
                                                  themeController
                                                          .isDarkMode
                                                          .value
                                                      ? Colors.white
                                                      : AppColor
                                                          .kCalenderHeaderWeeklyColor,
                                              fontFamily: 'NotoKufiArabic',
                                            )
                                            : TextStyle(
                                              color:
                                                  themeController
                                                          .isDarkMode
                                                          .value
                                                      ? Colors.white
                                                      : AppColor
                                                          .kCalenderHeaderWeeklyColor,
                                              fontFamily: 'Montserrat',
                                            ),
                                    weekendTextStyle:
                                        homeC.languageCode.value == 'ar'
                                            ? TextStyle(
                                              color:
                                                  themeController
                                                          .isDarkMode
                                                          .value
                                                      ? Colors.white
                                                      : AppColor
                                                          .kCalenderHeaderWeeklyColor,
                                              fontFamily: 'NotoKufiArabic',
                                            )
                                            : TextStyle(
                                              color:
                                                  themeController
                                                          .isDarkMode
                                                          .value
                                                      ? Colors.white
                                                      : AppColor
                                                          .kCalenderHeaderWeeklyColor,
                                              fontFamily: 'Montserrat',
                                            ),
                                    todayDecoration: const BoxDecoration(
                                      color: Colors.grey, // No color for today
                                      shape: BoxShape.circle,
                                    ),
                                    selectedDecoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color:
                                          AppColor
                                              .kGreen1Color, // Highlight selected date
                                    ),
                                    outsideDaysVisible: false,
                                    // Ensure unselected dates are transparent
                                    defaultDecoration: const BoxDecoration(
                                      color: Colors.transparent,
                                      shape: BoxShape.circle,
                                    ),
                                    selectedTextStyle:
                                        homeC.languageCode.value == 'ar'
                                            ? const TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'NotoKufiArabic',
                                              fontWeight: FontWeight.bold,
                                            )
                                            : const TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.bold,
                                            ),
                                  ),
                                  selectedDayPredicate: (day) {
                                    // Highlight only the date selected by the user

                                    return isSameDay(
                                      homeC.selectedDate.value,
                                      day,
                                    );
                                  },
                                  focusedDay: homeC.focusedDay.value,
                                  firstDay: DateTime.now(),
                                  lastDay: DateTime.utc(2030, 3, 14),
                                  onDaySelected: (
                                    selectedDay,
                                    focusedDay,
                                  ) async {
                                    homeC.selectedDate.value = selectedDay;
                                    print(
                                      " date ${selectedDay} ${focusedDay}  ${homeC.selectedDate.value}",
                                    );
                                    String formattedDate = DateFormat(
                                      'yyyy-MM-dd',
                                    ).format(selectedDay);
                                    homeC.focusedDay.value = focusedDay;
                                    await homeC.timeSlotApi(
                                      consultationId:
                                          homeC.consultationId.toString(),
                                      date: formattedDate,
                                    );
                                  },
                                  calendarFormat: CalendarFormat.month,
                                ),
                              ),
                            ),
                          ),
                          ResponsiveRowColumnItem(child: 8.heightSpace),
                          ResponsiveRowColumnItem(
                            child: Obx(
                              () => TextComponents(
                                title: "date&Time".tr,
                                size:
                                    ResponsiveBreakpoints.of(context).isMobile
                                        ? 14.sp
                                        : 14,
                                color:
                                    themeController.isDarkMode.value
                                        ? AppColor.kWhiteColor
                                        : AppColor.kGreen1Color,
                                weight: FontWeight.bold,
                              ),
                            ),
                          ),
                          ResponsiveRowColumnItem(
                            child: Obx(
                              () =>
                                  homeC.timeSlotStatus.value == Status.LOADING
                                      ? Padding(
                                        padding: const EdgeInsets.all(
                                          8.0,
                                        ).copyWith(
                                          left: isMobile ? 150.w : 150,
                                        ),
                                        child: getIndicator(),
                                      )
                                      : homeC.timeSlotStatus.value ==
                                          Status.COMPLETED
                                      ? homeC.timeSlotList.value.isEmpty
                                          ? Padding(
                                            padding: const EdgeInsets.all(
                                              8.0,
                                            ).copyWith(left: 66, top: 60),
                                            child: TextComponents(
                                              color:
                                                  themeController
                                                          .isDarkMode
                                                          .value
                                                      ? AppColor.kWhiteColor
                                                      : AppColor.kGreen1Color,
                                              title: 'selectTimeDes'.tr,
                                              size: isMobile ? 16.sp : 16,
                                              weight: FontWeight.w400,
                                            ),
                                          )
                                          : Container(
                                            width:
                                                ResponsiveBreakpoints.of(
                                                      context,
                                                    ).isMobile
                                                    ? null
                                                    : 346,
                                            child: ResponsiveGridList(
                                              shrinkWrap: true,
                                              horizontalGridSpacing:
                                                  ResponsiveBreakpoints.of(
                                                        context,
                                                      ).isMobile
                                                      ? 10.sp
                                                      : 10, // Horizontal space between grid items
                                              verticalGridSpacing:
                                                  ResponsiveBreakpoints.of(
                                                        context,
                                                      ).isMobile
                                                      ? 7.sp
                                                      : 7, // Vertical space between grid items
                                              horizontalGridMargin:
                                                  ResponsiveBreakpoints.of(
                                                        context,
                                                      ).isMobile
                                                      ? 7.sp
                                                      : 3, // Horizontal space around the grid
                                              verticalGridMargin:
                                                  ResponsiveBreakpoints.of(
                                                        context,
                                                      ).isMobile
                                                      ? 7.sp
                                                      : 7, // Vertical space around the grid
                                              minItemWidth:
                                                  1000, // The minimum item width (can be smaller, if the layout constraints are smaller)
                                              minItemsPerRow:
                                                  ResponsiveBreakpoints.of(
                                                        context,
                                                      ).isMobile
                                                      ? 2
                                                      : 3, // The minimum items to show in a single row. Takes precedence over minItemWidth
                                              maxItemsPerRow:
                                                  ResponsiveBreakpoints.of(
                                                        context,
                                                      ).isMobile
                                                      ? 4
                                                      : 4, // The maximum items to show in a single row. Can be useful on large screens
                                              listViewBuilderOptions:
                                                  ListViewBuilderOptions(
                                                    physics:
                                                        const NeverScrollableScrollPhysics(),
                                                    padding: EdgeInsets.zero,
                                                  ), // Options that are getting passed to the ListView.builder() function
                                              children: List.generate(homeC.timeSlotList.value.length, (
                                                index,
                                              ) {
                                                final time =
                                                    homeC
                                                        .timeSlotList
                                                        .value[index];
                                                final isSelected =
                                                    homeC.selectedTimeId ==
                                                    time.id.toString();

                                                return GetX<HomeController>(
                                                  init: HomeController(
                                                    homeRepo: getIt(),
                                                  ),
                                                  builder: (c) {
                                                    return Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                            2.0,
                                                          ),
                                                      child: GestureDetector(
                                                        onTap: () {
                                                          if (time.isBooked ==
                                                              1) {
                                                            Get.snackbar(
                                                              'warning'.tr,
                                                              'slotTimeAlreadyBooked'.tr,
                                                              backgroundColor:
                                                                  Colors.amber,
                                                              colorText:
                                                                  AppColor
                                                                      .kBlck23,
                                                            );
                                                          } else {
                                                            homeC
                                                                .selectedTimeId
                                                                .value = time.id
                                                                    .toString();
                                                            print(
                                                              homeC
                                                                      .selectedTimeId
                                                                      .value +
                                                                  " id",
                                                            );
                                                          }
                                                        },
                                                        child: Container(
                                                          padding: EdgeInsets.symmetric(
                                                            horizontal:
                                                                ResponsiveBreakpoints.of(
                                                                      context,
                                                                    ).isMobile
                                                                    ? 10.w
                                                                    : 10,
                                                            vertical:
                                                                ResponsiveBreakpoints.of(
                                                                      context,
                                                                    ).isMobile
                                                                    ? 12.h
                                                                    : 7,
                                                          ),
                                                          decoration:
                                                              themeController
                                                                      .isDarkMode
                                                                      .value
                                                                  ? BoxDecoration(
                                                                    color:
                                                                        time.isBooked ==
                                                                                1
                                                                            ? AppColor.kLightGrey
                                                                            : isSelected
                                                                            ? AppColor.kGreen1Color
                                                                            : AppColor.kBlck23,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                          8.0,
                                                                        ),
                                                                  )
                                                                  : BoxDecoration(
                                                                    border: Border.all(
                                                                      color:
                                                                          AppColor
                                                                              .kCalenderWhite,
                                                                    ),
                                                                    color:
                                                                        time.isBooked ==
                                                                                1
                                                                            ? AppColor.kLightGrey
                                                                            : isSelected
                                                                            ? AppColor.kGreen1Color
                                                                            : AppColor.kCalenderWhite,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                          8.0,
                                                                        ),
                                                                  ),
                                                          child: Center(
                                                            child:
                                                                themeController
                                                                        .isDarkMode
                                                                        .value
                                                                    ? TextComponents(
                                                                      title:
                                                                          time.timeslot,
                                                                      size:
                                                                          ResponsiveBreakpoints.of(
                                                                                context,
                                                                              ).isMobile
                                                                              ? 9.sp
                                                                              : 14,
                                                                      color:
                                                                          isSelected
                                                                              ? Colors.white
                                                                              : Colors.white,
                                                                      weight:
                                                                          FontWeight
                                                                              .w400,
                                                                    )
                                                                    : TextComponents(
                                                                      title:
                                                                          time.timeslot,
                                                                      size:
                                                                          ResponsiveBreakpoints.of(
                                                                                context,
                                                                              ).isMobile
                                                                              ? 9.sp
                                                                              : 14,
                                                                      color:
                                                                          isSelected
                                                                              ? Colors.white
                                                                              : AppColor.kCalenderTitleColor,
                                                                      weight:
                                                                          FontWeight
                                                                              .w400,
                                                                    ),
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                );
                                              }),
                                            ),
                                          )
                                      : Padding(
                                        padding: const EdgeInsets.all(
                                          8.0,
                                        ).copyWith(top: 34, left: 66),
                                        child: TextComponents(
                                          color:
                                              themeController.isDarkMode.value
                                                  ? AppColor.kWhiteColor
                                                  : AppColor.kGreen1Color,
                                          title:
                                              homeC.timeSlotErrorMessage.value,
                                          size: isMobile ? 16.sp : 16,
                                          weight: FontWeight.w400,
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                            ),
                          ),
                          ResponsiveRowColumnItem(child: 40.heightSpace),
                          ResponsiveRowColumnItem(
                            child: Obx(
                              () =>
                                  homeC.timeSlotList.value.isEmpty
                                      ? SizedBox.fromSize()
                                      : PrimaryButton(
                                        width:
                                            ResponsiveBreakpoints.of(
                                                  context,
                                                ).isMobile
                                                ? 346.w
                                                : 346,
                                        height:
                                            ResponsiveBreakpoints.of(
                                                  context,
                                                ).isMobile
                                                ? 56.h
                                                : 56,
                                        onTap: () {
                                          if (homeC.selectedTimeId.value ==
                                              '-1') {
                                            Get.snackbar(
                                              'warning'.tr,
                                              'PleaseSelectTimeSlot'.tr,
                                              backgroundColor: Colors.black,
                                              colorText: AppColor.kWhiteColor,
                                            );
                                          } else {
                                            Get.toNamed('/SummaryStepper');
                                          }
                                        },
                                        childWidget: TextComponents(
                                          title: "continue".tr,
                                          size:
                                              ResponsiveBreakpoints.of(
                                                    context,
                                                  ).isMobile
                                                  ? 16.sp
                                                  : 16,
                                          color: AppColor.kWhiteColor,
                                          weight: FontWeight.w400,
                                        ),
                                        bgColor: AppColor.kGreen1Color,
                                      ),
                            ),
                          ),
                          ResponsiveRowColumnItem(child: 46.heightSpace),
                        ],
                      ),
                    ),
                  ),
                ),
      ),
    );
  }
}
