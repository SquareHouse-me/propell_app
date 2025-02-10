import 'package:propell/configs/generalWidgets/export_general.dart';
import 'package:propell/configs/generalWidgets/primary_button.dart';
import 'package:propell/configs/generalWidgets/textstyle_component.dart';
import 'package:propell/configs/res/colors.dart';
import 'package:propell/configs/res/icons.dart';
import 'package:propell/configs/utlis/extension.dart';
import 'package:propell/data/network/export_view.dart';
import 'package:propell/data/repository/summary_repo.dart';
import 'package:propell/main.dart';
import 'package:propell/viewModels/controllers/summary_controller.dart';
import 'package:propell/viewModels/controllers/theme_controller.dart'; 
import 'package:responsive_framework/responsive_framework.dart';
import 'dart:html' as html;

class FailedDialogPage extends StatefulWidget {
  FailedDialogPage({super.key});

  @override
  State<FailedDialogPage> createState() => _FailedDialogPageState();
}

class _FailedDialogPageState extends State<FailedDialogPage> {
  ThemeController themeController = Get.find<ThemeController>();

  String bookingId = '';

  @override
  void initState() {
    super.initState();
    bookingId = Get.parameters['id'] ?? '';
  }

  @override
  Widget build(BuildContext context) {
    bool isMobile = ResponsiveBreakpoints.of(context).isMobile;
    Get.put(
      SummaryController(
        summaryRepo: getIt<SummaryRepo>(),
      ),
      permanent: true,
    );
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(bottom: 20.h),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
                child: ResponsiveRowColumn(
              layout: ResponsiveRowColumnType.COLUMN,
              columnMainAxisSize: MainAxisSize.min,
              columnCrossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ResponsiveRowColumnItem(
                  child: 40.heightSpace,
                ),
                ResponsiveRowColumnItem(
                    child: Container(
                        width: 200,
                        height: 200,
                        child: SvgPicture.asset(AppIcons.failed))),
                ResponsiveRowColumnItem(
                  child: 24.heightSpace,
                ),
                ResponsiveRowColumnItem(
                    child: TextComponents(
                  color: themeController.isDarkMode.value
                      ? AppColor.kWhiteColor
                      : AppColor.kDarkTitleColor,
                  title: 'Oops!',
                  size: isMobile ? 26.sp : 26,
                  weight: FontWeight.w600,
                )),
                ResponsiveRowColumnItem(
                  child: 12.heightSpace,
                ),
                ResponsiveRowColumnItem(
                    child: TextComponents(
                  color: themeController.isDarkMode.value
                      ? AppColor.kWhiteColor
                      : AppColor.kDarkTitleColor,
                  title: 'payment Failed please try again',
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
                          // openInWindow(
                          //     "https://stg.propell.design/SummaryStepper");
                          
                          log('booking id pass $bookingId');
                          Get.offNamed('/SummaryStepper', arguments: bookingId);
                        },
                        childWidget: TextComponents(
                          title: "Back",
                          size: isMobile ? 16.sp : 16,
                          color: AppColor.kWhiteColor,
                          weight: FontWeight.w400,
                        ),
                        bgColor: AppColor.kGreen1Color))
              ],
            )),
          ),
        ),
      ),
    );
  }

  void openInWindow(String uri) {
    html.window.location.replace(uri);
  }
}
