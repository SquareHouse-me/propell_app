import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:propell/configs/generalWidgets/textstyle_component.dart';
import 'package:propell/configs/res/colors.dart';
import 'package:propell/configs/utlis/validation_utils.dart';
import 'package:propell/data/network/export_view.dart';
import 'package:propell/data/response/status.dart';
import 'package:propell/viewModels/controllers/home_controller.dart';
import 'package:propell/viewModels/controllers/theme_controller.dart';
import 'package:responsive_framework/responsive_framework.dart';

class ServiceTypeTwo extends StatelessWidget {
  ServiceTypeTwo({super.key});

  final homeC = Get.find<HomeController>();

  ThemeController themeController = Get.find<ThemeController>();
  @override
  Widget build(BuildContext context) {
    bool isMobile = ResponsiveBreakpoints.of(context).isMobile;
    return Obx(() => homeC.consultStatus.value == Status.LOADING
        ? SizedBox(
            width: isMobile ? 150 : 150,
            height: isMobile ? 150 : 150,
            child: Center(
              child: getIndicator(),
            ),
          )
        : homeC.consultStatus.value == Status.COMPLETED
            ? homeC.consultList.value.isEmpty
                ? Center(
                    child: TextComponents(
                      color: themeController.isDarkMode.value
                          ? AppColor.kWhiteColor
                          : AppColor.kGreen1Color,
                      title: 'No consultation is Found',
                      size: isMobile ? 24.sp : 24,
                      weight: FontWeight.bold,
                    ),
                  )
                : SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextComponents(
                              color: themeController.isDarkMode.value
                                  ? AppColor.kWhiteColor
                                  : AppColor.kGreen1Color,
                              title: 'Consultant',
                              size: ResponsiveBreakpoints.of(context).isMobile
                                  ? 14.sp
                                  : 14,
                              weight: FontWeight.bold,
                            ),
                            IconButton(
                              icon:
                                  const Icon(Icons.close, color: Colors.white),
                              onPressed: () {
                                Get.find<HomeController>()
                                    .isLocationSelected
                                    .value = true;
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        ),
                        SizedBox(height: isMobile ? 5.0.h : 5),
                        TextComponents(
                          color: themeController.isDarkMode.value
                              ? AppColor.kWhiteColor
                              : AppColor.kGreen1Color,
                          title: 'Please select a consultant',
                          size: isMobile ? 12.sp : 12,
                          weight: FontWeight.w400,
                        ),
                        SizedBox(height: isMobile ? 17.h : 17.0),
                        ListView.builder(
                            padding: EdgeInsets.zero,
                            itemCount: homeC.consultList.value.length,
                            shrinkWrap: true,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.all(2.0)
                                    .copyWith(left: 0, right: 0, bottom: 0),
                                child: ResUseableContainer(
                                  id: homeC.consultList.value[index].id,
                                  title: homeC.consultList.value[index].name,
                                  isMobile: isMobile,
                                  appIcon: homeC.consultList.value[index].image,
                                ),
                              );
                            })
                      ],
                    ),
                  )
            : Center(
                child: TextComponents(
                  color: themeController.isDarkMode.value
                      ? AppColor.kWhiteColor
                      : AppColor.kGreen1Color,
                  title: homeC.servicesErrorMessage.value,
                  size: isMobile ? 24.sp : 24,
                  weight: FontWeight.bold,
                ),
              ));
  }
}

class ResUseableContainer extends StatelessWidget {
  ResUseableContainer({
    super.key,
    required this.isMobile,
    required this.title,
    required this.appIcon,
    required this.id,
  });
  final int id;
  final bool isMobile;
  final String title;
  final String appIcon;
  HomeController homeC = Get.find<HomeController>();
  ThemeController themeController = Get.find<ThemeController>();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          top: ResponsiveBreakpoints.of(context).isMobile ? 7.h : 7),
      padding: EdgeInsets.symmetric(
          horizontal: ResponsiveBreakpoints.of(context).isMobile ? 20.w : 26,
          vertical: ResponsiveBreakpoints.of(context).isMobile ? 18.h : 34),
      decoration: BoxDecoration(
        color: themeController.isDarkMode.value
            ? AppColor.kBlck23
            : AppColor.kWhiteColor,
        borderRadius: BorderRadius.circular(
            ResponsiveBreakpoints.of(context).isMobile ? 15.r : 15.0),
      ),
      child: ListTile(
        onTap: () {
          Get.back();
          Get.toNamed(
            '/BookingCalendar',
          );
          homeC.consultationId = int.parse(id.toString());
          homeC.isLocationSelected.value = true;

          log(homeC.consultationId.toString() +
              "consultationID print" +
              id.toString());

          // Get.to(() => SummaryStepper());
        },
        contentPadding: EdgeInsets.zero,
        leading: Container(
          width: 44,
          height: 44,
          decoration: BoxDecoration(
            // color: AppColor.kGreen1Color,
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
              ? AppColor.kWhiteColor
              : AppColor.kGreen1Color,
          title: title,
          size: isMobile ? 12.sp : 12,
          weight: FontWeight.w500,
        ),
      ),
    );
  }
}
