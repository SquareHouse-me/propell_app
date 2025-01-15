import 'package:propell/configs/generalWidgets/appBar/app_bar.dart';
import 'package:propell/configs/generalWidgets/export_general.dart';
import 'package:propell/configs/generalWidgets/textstyle_component.dart';
import 'package:propell/configs/res/colors.dart';
import 'package:propell/configs/utlis/extension.dart';
import 'package:propell/configs/generalWidgets/appBar/web_appbar.dart';
import 'package:propell/configs/utlis/validation_utils.dart';
import 'package:propell/data/response/status.dart';
import 'package:propell/viewModels/controllers/home_controller.dart';
import 'package:propell/views/dashBoard/widgets/build_option_card.dart';
import 'package:propell/views/dashBoard/widgets/web_header.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

class HomeView extends StatelessWidget {
  final homeC = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    bool isMobile = ResponsiveBreakpoints.of(context).isMobile;
    return Scaffold(
      backgroundColor: AppColor.kPrimary,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(isMobile ? 150 : 100),
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
                      child: TextComponents(
                        color: Colors.white,
                        title: 'No Category is Found',
                        size: isMobile ? 24.sp : 24,
                        weight: FontWeight.bold,
                      ),
                    )
                  : SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        child: ResponsiveRowColumn(
                          layout: ResponsiveRowColumnType.COLUMN,
                          columnCrossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ResponsiveRowColumnItem(child: 40.heightSpace),
                            isMobile
                                ? ResponsiveRowColumnItem(
                                    child: TextComponents(
                                      color: Colors.white,
                                      title: 'Book an appointment',
                                      size: isMobile ? 24.sp : 24,
                                      weight: FontWeight.bold,
                                    ),
                                  )
                                : const ResponsiveRowColumnItem(
                                    child: WebHeaderTitle()),
                            ResponsiveRowColumnItem(
                              child: 20.heightSpace,
                            ),
                            ResponsiveRowColumnItem(
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
                                  physics: const NeverScrollableScrollPhysics(),
                                  padding: EdgeInsets
                                      .zero), // Options that are getting passed to the ListView.builder() function
                              children: homeC.categoryList.value.map((item) {
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
                            )),
                            ResponsiveRowColumnItem(child: 12.heightSpace),
                            ResponsiveRowColumnItem(
                                child: SizedBox(
                              width: double.infinity,
                              child: Image.network(
                                homeC.sliderList.value.first.image.toString(),
                                fit: BoxFit.fill,
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
                            )),
                            ResponsiveRowColumnItem(child: 36.heightSpace),
                          ],
                        ),
                      ),
                    )
              : Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextComponents(
                      color: Colors.white,
                      title: homeC.categoryErrorMessage.value,
                      size: isMobile ? 18.sp : 24,
                      weight: FontWeight.bold,
                      textAlign: TextAlign.center,
                    ),
                  ),
                )),
    );
  }
}
