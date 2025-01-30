// ignore_for_file: must_be_immutable

import 'package:propell/viewModels/controllers/home_controller.dart';

import 'export_general.dart';

class TextComponents extends StatelessWidget {
  final title;
  double size;
  final weight;
  final color;
  final decoration;
  final textAlign;
  final TextOverflow? overflow;
  TextComponents({
    super.key,
    required this.title,
    required this.size,
    this.weight,
    this.color,
    this.decoration,
    this.overflow,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    final homeC = Get.find<HomeController>();
    return Obx(() => homeC.languageCode.value == 'ar'
        ? Text(
            title,
            style: TextStyle(
              fontFamily: 'NotoKufiArabic',
              fontSize: size,
              color: color,
              fontWeight: weight,
              decoration: decoration,
            ),
            textAlign: textAlign,
            overflow: overflow,
          )
        : Text(
            title,
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: size,
              color: color,
              fontWeight: weight,
              decoration: decoration,
            ),
            textAlign: textAlign,
            overflow: overflow,
          ));
  }
}
