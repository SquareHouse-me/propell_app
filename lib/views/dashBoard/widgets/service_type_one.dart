import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:propell/configs/generalWidgets/textstyle_component.dart';
import 'package:propell/configs/res/colors.dart';
import 'package:propell/configs/utlis/validation_utils.dart';
import 'package:propell/data/response/status.dart';
import 'package:propell/viewModels/controllers/home_controller.dart';
import 'package:propell/viewModels/controllers/summary_controller.dart';
import 'package:propell/viewModels/services/notification_services.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ServiceTypeOne extends StatefulWidget {
  const ServiceTypeOne({super.key});

  @override
  State<ServiceTypeOne> createState() => _ServiceTypeOneState();
}

class _ServiceTypeOneState extends State<ServiceTypeOne> {
  final homeC = Get.find<HomeController>();
  final summary = Get.find<SummaryController>();
  // NotificationServices services = NotificationServices();
  @override
  void initState() {
    super.initState();
    homeC.servicesApi();
    homeC.consultationApi();
    // checkAndRefreshToken();
    log('message');
    //studiolistController.studiolistApi(1.toString());
  }

  Future<void> checkAndRefreshToken() async {
    try {
      SharedPreferences sp = await SharedPreferences.getInstance();
      String? deviceToken = await "services.getDeviceToken()";

      // Retrieve the saved token and its timestamp
      String? savedDeviceToken = await sp.getString('DeviceToken').toString();

      String? savedTokenTimestampStr =
          await sp.getString('TokenTimestamp').toString();

      int? savedTokenTimestamp;
      if (savedTokenTimestampStr != null && savedTokenTimestampStr.isNotEmpty) {
        savedTokenTimestamp = int.tryParse(savedTokenTimestampStr);
      }

      log('$savedDeviceToken savedDeviceToken');
      log('$deviceToken deviceToken');

      // Define a token expiration period, for example, 24 hours
      const tokenExpirationPeriod = Duration(hours: 24);
      bool isTokenExpired = savedTokenTimestamp == null ||
          DateTime.now().millisecondsSinceEpoch - savedTokenTimestamp >
              tokenExpirationPeriod.inMilliseconds;

      if (deviceToken == savedDeviceToken && !isTokenExpired) {
        log('Token is not expired. No need to refresh.');
        summary.fCMtoken.value = savedDeviceToken.toString();
      } else {
        log('Token is expired or different. Refreshing...');
        String newToken = await "services.isTokenRefresh()";
        log('$newToken refreshed token');
        summary.fCMtoken.value = newToken.toString();
      }
    } catch (e) {
      log('message else e');
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    bool isMobile = ResponsiveBreakpoints.of(context).isMobile;
    return Obx(() => homeC.servicesStatus.value == Status.LOADING
        ? SizedBox(
            width: isMobile ? 150 : 150,
            height: isMobile ? 150 : 150,
            child: Center(
              child: getIndicator(),
            ),
          )
        : homeC.servicesStatus.value == Status.COMPLETED
            ? homeC.servicesList.value.isEmpty
                ? Center(
                    child: TextComponents(
                      color: Colors.white,
                      title: 'No Services is Found',
                      size: isMobile ? 24.sp : 24,
                      weight: FontWeight.bold,
                    ),
                  )
                : Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextComponents(
                            color: AppColor.kWhiteColor,
                            title: 'Select Location',
                            size: isMobile ? 14.sp : 14,
                            weight: FontWeight.bold,
                          ),
                          IconButton(
                            icon: Icon(Icons.close, color: Colors.white),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      ),
                      SizedBox(height: isMobile ? 5.0.h : 5),
                      TextComponents(
                        color: AppColor.kWhiteColor,
                        title:
                            'Please select a location where you would like to meet our consultant.',
                        size: isMobile ? 12.sp : 12,
                        weight: FontWeight.w400,
                      ),
                      SizedBox(height: isMobile ? 17.h : 17.0),
                      ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          itemCount: homeC.servicesList.value.length,
                          itemBuilder: (BuildContext context, int index) {
                            log(homeC.servicesList.value[index].price);
                            return _buildLocationOption(
                                id: homeC.servicesList.value[index].id,
                                icon: homeC.servicesList.value[index].images,
                                label: homeC.servicesList.value[index].name,
                                price: homeC.servicesList.value[index].price
                                    .toString(),
                                context: context);
                          })
                    ],
                  )
            : Center(
                child: TextComponents(
                  color: Colors.white,
                  title: homeC.consultErrorMessage.value,
                  size: isMobile ? 16.sp : 16,
                  weight: FontWeight.w400,
                ),
              ));
  }
}

Widget _buildLocationOption(
    {required String icon,
    required String label,
    required String price,
    required int id,
    required BuildContext context}) {
  return GestureDetector(
    onTap: () async {
      Get.find<HomeController>().isLocationSelected.value = false;
      print(Get.find<HomeController>().isLocationSelected.value);
      Get.find<HomeController>().serviceId = id;
      
    },
    child: Container(
      margin: EdgeInsets.only(
          top: ResponsiveBreakpoints.of(context).isMobile ? 7.h : 7),
      padding: EdgeInsets.symmetric(
          horizontal: ResponsiveBreakpoints.of(context).isMobile ? 20.w : 26,
          vertical: ResponsiveBreakpoints.of(context).isMobile ? 18.h : 34),
      decoration: BoxDecoration(
        color: AppColor.kBlck23,
        borderRadius: BorderRadius.circular(
            ResponsiveBreakpoints.of(context).isMobile ? 15.r : 15.0),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: Image.network(
          icon, // URL of the image
          width: 30,
          //  color: AppColor.kGreen1Color,
          height: 30,
          fit: BoxFit.fitHeight,
          loadingBuilder: (BuildContext context, Widget child,
              ImageChunkEvent? loadingProgress) {
            if (loadingProgress == null)
              return child; // Return the image once loaded
            return getIndicator(); // Show the custom loading indicator
          },
          errorBuilder:
              (BuildContext context, Object error, StackTrace? stackTrace) {
            return Icon(
              Icons.error,
              color: AppColor.kGreen1Color, // Custom error icon and color
            );
          },
        ),
        title: TextComponents(
          color: AppColor.kWhiteColor,
          title: label,
          size: ResponsiveBreakpoints.of(context).isMobile ? 12.sp : 14,
          weight: FontWeight.w500,
        ),
        trailing: Container(
          width: ResponsiveBreakpoints.of(context).isMobile ? 80.w : 90,
          height: ResponsiveBreakpoints.of(context).isMobile ? 35.h : 28,
          padding: EdgeInsets.symmetric(
              vertical: ResponsiveBreakpoints.of(context).isMobile ? 6.0.h : 6,
              horizontal:
                  ResponsiveBreakpoints.of(context).isMobile ? 3.0.w : 5),
          decoration: BoxDecoration(
            color: AppColor.kGreen1Color.withOpacity(0.2),
            borderRadius: BorderRadius.circular(
                ResponsiveBreakpoints.of(context).isMobile ? 8.r : 8.0),
          ),
          child: Center(
            child: TextComponents(
              color: AppColor.kWhiteColor,
              title: 'KWD ${double.parse(price).toInt()}',
              size: ResponsiveBreakpoints.of(context).isMobile ? 12.sp : 14,
              weight: FontWeight.w500,
            ),
          ),
        ),
      ),
    ),
  );
}
