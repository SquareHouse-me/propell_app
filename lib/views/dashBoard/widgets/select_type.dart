 
import 'package:propell/configs/generalWidgets/export_general.dart';  
import 'package:propell/viewModels/controllers/home_controller.dart';
import 'package:propell/viewModels/controllers/theme_controller.dart'; 
import 'package:propell/views/dashBoard/widgets/service_type_one.dart';
import 'package:propell/views/dashBoard/widgets/service_type_two.dart';
import 'package:responsive_framework/responsive_framework.dart';

class SelectType {
  static showLocationDialog(BuildContext context) {
    bool isMobile = ResponsiveBreakpoints.of(context).isMobile;
    final homeC = Get.find<HomeController>();
  ThemeController themeController = Get.find<ThemeController>();
    // homeC.servicesApi();
    return showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return Dialog(
           
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(isMobile ? 20.r : 20.0),
          ),
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: isMobile ? 14.w : 42,
                  vertical: isMobile ? 20.h : 39),
              width: isMobile ? 312.w : 663,
              // height: ResponsiveBreakpoints.of(context).isMobile ? 316.h : 397,
              child: Obx(() => homeC.isLocationSelected.value
                  ? ServiceTypeOne()
                  : ServiceTypeTwo()),
            ),
          ),
        );
      },
    );
  }
}
