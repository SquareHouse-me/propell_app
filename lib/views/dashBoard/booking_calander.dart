// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:propell/configs/utlis/validation_utils.dart';
import 'package:propell/data/response/status.dart';
import 'package:propell/main.dart';
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
import 'package:propell/views/summary/summary_view.dart';

class BookingCalander extends StatefulWidget {
  final String consultationId;
  const BookingCalander({
    Key? key,
    required this.consultationId,
  }) : super(key: key);

  @override
  State<BookingCalander> createState() => _BookingCalanderState();
}

class _BookingCalanderState extends State<BookingCalander> {
  final homeC = Get.find<HomeController>();
  @override
  void initState() {
    super.initState();
    homeC.setTimeSlotStatus(Status.LOADING);
    homeC.setTimeSlotStatus(Status.COMPLETED);
    homeC.consultationId = int.parse(widget.consultationId);
    print("${homeC.consultationId} consultationId");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    homeC.timeSlotList.value = [];
    homeC.selectedDate.value = DateTime.now();
    homeC.focusedDay.value = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    bool isMobile = ResponsiveBreakpoints.of(context).isMobile;

    return Scaffold(
      backgroundColor: AppColor.kPrimary,
      // bottomNavigationBar: Padding(
      //   padding: EdgeInsets.symmetric(
      //     horizontal: ResponsiveBreakpoints.of(context).isMobile ? 16.sp : 465,
      //   ),
      //   child: ,
      // ),
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(isMobile ? 60 : 100),
          child: ResponsiveBreakpoints.of(context).isMobile
              ? AppbarWidget(
                  title: 'Date & Time',
                  isFirstPage: false,
                )
              : WebAppbarWidget()),
      body: SingleChildScrollView(
        padding: EdgeInsets.zero,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal:
                  ResponsiveBreakpoints.of(context).isMobile ? 15.h : 15,
              vertical: ResponsiveBreakpoints.of(context).isMobile ? 0.h : 27),
          child: Center(
            child: ResponsiveRowColumn(
              columnCrossAxisAlignment: CrossAxisAlignment.start,
              columnMainAxisAlignment: MainAxisAlignment.start,
              layout: ResponsiveRowColumnType.COLUMN,
              children: [
                ResponsiveRowColumnItem(
                    child: TextComponents(
                  title: "Select Date",
                  size: ResponsiveBreakpoints.of(context).isMobile ? 14.sp : 14,
                  color: AppColor.kWhiteColor,
                  weight: FontWeight.w700,
                )),
                ResponsiveRowColumnItem(child: 8.heightSpace),
                ResponsiveRowColumnItem(
                    child: Obx(() => Container(
                          width: ResponsiveBreakpoints.of(context).isMobile
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
                                      : 14),
                          decoration: BoxDecoration(
                            color: AppColor.kBlck23,
                            borderRadius: BorderRadius.circular(
                                ResponsiveBreakpoints.of(context).isMobile
                                    ? 8.h
                                    : 8),
                          ),
                          child: TableCalendar(
                            daysOfWeekHeight: 30,
                            headerStyle: HeaderStyle(
                              // decoration: BoxDecoration(color: AppColor.kPrimary2),
                              formatButtonVisible: false,
                              titleCentered: true,

                              titleTextStyle: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize:
                                    ResponsiveBreakpoints.of(context).isMobile
                                        ? 14.sp
                                        : 14,
                                fontWeight: FontWeight.w500,
                              ),
                              leftChevronIcon: Icon(Icons.chevron_left,
                                  color: AppColor.kLightIconsColor),
                              rightChevronIcon: Icon(Icons.chevron_right,
                                  color: AppColor.kLightIconsColor),
                            ),
                            startingDayOfWeek: StartingDayOfWeek.monday,
                            daysOfWeekStyle: DaysOfWeekStyle(
                              dowTextFormatter: (date, locale) =>
                                  DateFormat.E(locale)
                                      .format(date)
                                      .substring(0, 1),
                              decoration:
                                  BoxDecoration(color: AppColor.kPrimary2),
                              weekdayStyle:
                                  GoogleFonts.montserrat(color: Colors.white),
                              weekendStyle:
                                  GoogleFonts.montserrat(color: Colors.white),
                            ),
                            calendarStyle: CalendarStyle(
                              markerMargin: EdgeInsets.zero,
                              cellMargin: EdgeInsets.zero,
                              defaultTextStyle:
                                  GoogleFonts.montserrat(color: Colors.white),
                              weekendTextStyle:
                                  GoogleFonts.montserrat(color: Colors.white),
                              todayDecoration: BoxDecoration(
                                color: Colors.transparent, // No color for today
                                shape: BoxShape.circle,
                              ),
                              selectedDecoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColor
                                    .kGreen1Color, // Highlight selected date
                              ),
                              outsideDaysVisible: false,
                              // Ensure unselected dates are transparent
                              defaultDecoration: BoxDecoration(
                                  color: Colors.transparent,
                                  shape: BoxShape.circle),
                              selectedTextStyle: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            selectedDayPredicate: (day) {
                              // Highlight only the date selected by the user

                              return isSameDay(homeC.selectedDate.value, day);
                            },
                            focusedDay: homeC.focusedDay.value,
                            firstDay: DateTime.now(),
                            lastDay: DateTime.utc(2030, 3, 14),
                            onDaySelected: (selectedDay, focusedDay) async {
                              homeC.selectedDate.value = selectedDay;
                              print(
                                  " date ${selectedDay} ${focusedDay}  ${homeC.selectedDate.value}");
                              String formattedDate =
                                  DateFormat('yyyy-MM-dd').format(selectedDay);
                              homeC.focusedDay.value = focusedDay;
                              await homeC.timeSlotApi(
                                  consultationId: widget.consultationId,
                                  date: formattedDate);
                            },
                            calendarFormat: CalendarFormat.month,
                          ),
                        ))),
                ResponsiveRowColumnItem(child: 8.heightSpace),
                ResponsiveRowColumnItem(
                    child: TextComponents(
                  title: "Select Time",
                  size: ResponsiveBreakpoints.of(context).isMobile ? 14.sp : 14,
                  color: AppColor.kWhiteColor,
                  weight: FontWeight.w700,
                )),
                ResponsiveRowColumnItem(
                  child: Obx(() => homeC.timeSlotStatus.value == Status.LOADING
                      ? Padding(
                          padding: const EdgeInsets.all(8.0)
                              .copyWith(left: isMobile ? 150.w : 150),
                          child: getIndicator(),
                        )
                      : homeC.timeSlotStatus.value == Status.COMPLETED
                          ? homeC.timeSlotList.value.isEmpty
                              ? Padding(
                                  padding: const EdgeInsets.all(8.0)
                                      .copyWith(left: 60, top: 60),
                                  child: TextComponents(
                                    color: Colors.white,
                                    title: 'No Time Slot Available',
                                    size: isMobile ? 15.sp : 24,
                                    weight: FontWeight.bold,
                                  ),
                                )
                              : Container(
                                  width:
                                      ResponsiveBreakpoints.of(context).isMobile
                                          ? null
                                          : 346,
                                  child: ResponsiveGridList(
                                      shrinkWrap: true,
                                      horizontalGridSpacing:
                                          ResponsiveBreakpoints.of(context).isMobile
                                              ? 10.sp
                                              : 10, // Horizontal space between grid items
                                      verticalGridSpacing:
                                          ResponsiveBreakpoints.of(context).isMobile
                                              ? 7.sp
                                              : 7, // Vertical space between grid items
                                      horizontalGridMargin:
                                          ResponsiveBreakpoints.of(context).isMobile
                                              ? 7.sp
                                              : 3, // Horizontal space around the grid
                                      verticalGridMargin:
                                          ResponsiveBreakpoints.of(context).isMobile
                                              ? 7.sp
                                              : 7, // Vertical space around the grid
                                      minItemWidth:
                                          1000, // The minimum item width (can be smaller, if the layout constraints are smaller)
                                      minItemsPerRow:
                                          ResponsiveBreakpoints.of(context)
                                                  .isMobile
                                              ? 2
                                              : 3, // The minimum items to show in a single row. Takes precedence over minItemWidth
                                      maxItemsPerRow:
                                          ResponsiveBreakpoints.of(context)
                                                  .isMobile
                                              ? 4
                                              : 4, // The maximum items to show in a single row. Can be useful on large screens
                                      listViewBuilderOptions: ListViewBuilderOptions(
                                          physics: NeverScrollableScrollPhysics(),
                                          padding: EdgeInsets.zero), // Options that are getting passed to the ListView.builder() function
                                      children: List.generate(homeC.timeSlotList.value.length, (index) {
                                        final time =
                                            homeC.timeSlotList.value[index];
                                        final isSelected =
                                            homeC.selectedTimeId ==
                                                time.id.toString();

                                        return GetBuilder<HomeController>(
                                            init: HomeController(
                                                homeRepo: getIt()),
                                            builder: (c) {
                                              return Padding(
                                                padding:
                                                    const EdgeInsets.all(2.0),
                                                child: GestureDetector(
                                                  onTap: () {
                                                    if (time.isBooked == 1) {
                                                      Get.snackbar('Warning',
                                                          'Slot Time Already Booked',
                                                          backgroundColor:
                                                              Colors.amber,
                                                          colorText: AppColor
                                                              .kWhiteColor);
                                                    } else {
                                                      homeC.selectedTimeId
                                                              .value =
                                                          time.id.toString();
                                                      print(homeC.selectedTimeId
                                                              .value +
                                                          " id");
                                                    }
                                                  },
                                                  child: Container(
                                                    padding: EdgeInsets.symmetric(
                                                        horizontal:
                                                            ResponsiveBreakpoints.of(
                                                                        context)
                                                                    .isMobile
                                                                ? 10.w
                                                                : 10,
                                                        vertical:
                                                            ResponsiveBreakpoints.of(
                                                                        context)
                                                                    .isMobile
                                                                ? 12.h
                                                                : 7),
                                                    decoration: BoxDecoration(
                                                      color: time.isBooked == 1
                                                          ? AppColor.kLightGrey
                                                          : isSelected
                                                              ? AppColor
                                                                  .kGreen1Color
                                                              : AppColor
                                                                  .kBlck23,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    child: Center(
                                                      child: TextComponents(
                                                        title: time.timeslot,
                                                        size: ResponsiveBreakpoints
                                                                    .of(context)
                                                                .isMobile
                                                            ? 9.sp
                                                            : 14,
                                                        color: isSelected
                                                            ? Colors.white
                                                            : Colors.white,
                                                        weight: FontWeight.w400,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              );
                                            });
                                      })),
                                )
                          : Center(
                              child: Padding(
                                padding:
                                    const EdgeInsets.all(8.0).copyWith(top: 34),
                                child: TextComponents(
                                  color: Colors.white,
                                  title: homeC.timeSlotErrorMessage.value,
                                  size: isMobile ? 20.sp : 24,
                                  weight: FontWeight.bold,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            )),
                ),
                ResponsiveRowColumnItem(child: 40.heightSpace),
                ResponsiveRowColumnItem(
                    child: Obx(() => homeC.timeSlotList.value.isEmpty
                        ? SizedBox.fromSize()
                        : PrimaryButton(
                            width: ResponsiveBreakpoints.of(context).isMobile
                                ? 346.w
                                : 346,
                            height: ResponsiveBreakpoints.of(context).isMobile
                                ? 56.h
                                : 56,
                            onTap: () {
                              if (homeC.selectedTimeId.value == '-1') {
                                Get.snackbar(
                                    'Warning', 'Please Select Time Slot',
                                    backgroundColor: Colors.amber,
                                    colorText: AppColor.kWhiteColor);
                              } else {
                                Get.to(() => SummaryStepper());
                              }
                            },
                            childWidget: TextComponents(
                              title: "Continue",
                              size: ResponsiveBreakpoints.of(context).isMobile
                                  ? 16.sp
                                  : 16,
                              color: AppColor.kWhiteColor,
                              weight: FontWeight.w400,
                            ),
                            bgColor: AppColor.kGreen1Color))),
                ResponsiveRowColumnItem(child: 46.heightSpace),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
