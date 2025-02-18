import 'package:propell/configs/generalWidgets/appBar/app_bar.dart';
import 'package:propell/configs/generalWidgets/export_general.dart';
import 'package:propell/configs/generalWidgets/textstyle_component.dart';
import 'package:propell/configs/res/colors.dart';
import 'package:propell/configs/utlis/extension.dart';
import 'package:propell/configs/generalWidgets/appBar/web_appbar.dart';
import 'package:propell/configs/utlis/validation_utils.dart';
import 'package:propell/data/response/status.dart';
import 'package:propell/viewModels/controllers/home_controller.dart';
import 'package:propell/viewModels/controllers/theme_controller.dart';
import 'package:propell/views/dashBoard/widgets/build_option_card.dart'; 
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';


// import 'dart:html' as html;import 'dart:js' as js;//
class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final homeC = Get.find<HomeController>();

  ThemeController themeController = Get.find<ThemeController>();

  @override
  Widget build(BuildContext context) {
    bool isMobile = ResponsiveBreakpoints.of(context).isMobile;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(isMobile ? 60 : 100),
          child: isMobile
              ? AppbarWidget(
                  title: '',
                  isFirstPage: true,
                )
              : WebAppbarWidget()),
      body: Obx(() => homeC.cateogryStatus.value == Status.LOADING
          ? Center(
              child: getIndicator(),
            )
          : homeC.cateogryStatus.value == Status.COMPLETED
              ? homeC.categoryList.value.isEmpty
                  ? Center(
                      child: Obx(() => TextComponents(
                            color: themeController.isDarkMode.value
                                ? AppColor.kWhiteColor
                                : AppColor.kGreen1Color,
                            title: 'No Category is Found',
                            size: isMobile ? 16.sp : 16,
                            weight: FontWeight.w400,
                          )),
                    )
                  : SingleChildScrollView(
                      child:  Obx(()=>Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.w),
                          child: ResponsiveRowColumn(
                            layout: ResponsiveRowColumnType.COLUMN,
                            columnCrossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ResponsiveRowColumnItem(child: 40.heightSpace),
                              // isMobile
                              //     ?
                              ResponsiveRowColumnItem(
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: isMobile ? 0.0 : 25.0,
                                      right: isMobile ? 0.0 : 25.0),
                                  child: TextComponents(
                                    color: themeController.isDarkMode.value
                                        ? AppColor.kWhiteColor
                                        : AppColor.kGreen1Color,
                                    title: 'Book an appointment',
                                    size: isMobile ? 20.sp : 20,
                                    weight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              // : const ResponsiveRowColumnItem(
                              //     child: WebHeaderTitle()),
                              ResponsiveRowColumnItem(
                                child: 20.heightSpace,
                              ),
                              ResponsiveRowColumnItem(
                                  child: SizedBox(
                                width: isMobile ? null : 1100,
                                child: ResponsiveGridList(
                                  shrinkWrap: true,

                                  horizontalGridSpacing: isMobile
                                      ? 2.sp
                                      : 16, // Horizontal space between grid items
                                  verticalGridSpacing: isMobile
                                      ? 16.sp
                                      : 14, // Vertical space between grid items
                                  horizontalGridMargin: isMobile
                                      ? 0.sp
                                      : 17, // Horizontal space around the grid
                                  verticalGridMargin: isMobile
                                      ? 0.sp
                                      : 15, // Vertical space around the grid
                                  minItemWidth:
                                      500, // The minimum item width (can be smaller, if the layout constraints are smaller)
                                  minItemsPerRow: isMobile
                                      ? 1
                                      : 3, // The minimum items to show in a single row. Takes precedence over minItemWidth
                                  maxItemsPerRow:
                                      3, // The maximum items to show in a single row. Can be useful on large screens
                                  listViewBuilderOptions: ListViewBuilderOptions(
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      padding: EdgeInsets
                                          .zero), // Options that are getting passed to the ListView.builder() function
                                  children:
                                      homeC.categoryList.value.map((item) {
                                    return buildOptionCard(
                                      id: item.id,
                                      context,
                                      icon: item
                                          .image, // Use the appropriate field for the icon
                                      label: item.name.split(' ')[
                                          0], // Use the appropriate field for the label
                                      subTitle: item.name.split(' ')[
                                          1], // Use the appropriate field for the subtitle
                                    );
                                  }).toList(), // The list of widgets in the list
                                ),
                              )),
                              ResponsiveRowColumnItem(child: 12.heightSpace),
                              // ResponsiveRowColumnItem(
                              //     child: Padding(
                              //   padding: EdgeInsets.only(
                              //     left: isMobile ? 0.0 : 25.0,
                              //   ),
                              //   child: Container(
                              //     width: isMobile ? null : 1060,
                              //     height: isMobile ? 200.h : 200,
                              //     padding: EdgeInsets.symmetric(
                              //         horizontal:
                              //             ResponsiveBreakpoints.of(context)
                              //                     .isMobile
                              //                 ? 19.h
                              //                 : 20,
                              //         vertical:
                              //             ResponsiveBreakpoints.of(context)
                              //                     .isMobile
                              //                 ? 12.h
                              //                 : 20),
                              //     decoration: BoxDecoration(
                              //       color: Colors.transparent,
                              //       borderRadius: BorderRadius.circular(
                              //           ResponsiveBreakpoints.of(context)
                              //                   .isMobile
                              //               ? 15.r
                              //               : 15),
                              //       shape: BoxShape.rectangle,
                              //       image: DecorationImage(
                              //         image: NetworkImage(
                              //           homeC.sliderList.value.first.image
                              //               .toString(), // URL of the image
                              //         ),
                              //         fit: BoxFit.fill,
                              //         onError: (exception, stackTrace) {},
                              //       ),
                              //     ),
                              //   ),
                              // )),
                              ResponsiveRowColumnItem(child: 36.heightSpace),
                              // ResponsiveRowColumnItem(
                              //   child: ElevatedButton(
                              //       onPressed: () {
                              //         Get.toNamed('/FailedDialogPage');
                              //       },
                              //       child: Text('Book Now')),
                              // ),
                            ],
                          ),
                        ),
                      )),
                    )
              : Obx(() => Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextComponents(
                        color: themeController.isDarkMode.value
                            ? AppColor.kWhiteColor
                            : AppColor.kGreen1Color,
                        title: homeC.categoryErrorMessage.value,
                        size: isMobile ? 16.sp : 16,
                        weight: FontWeight.w400,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ))),
    );
  }


}
