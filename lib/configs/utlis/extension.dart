import 'package:flutter/widgets.dart';

extension SizedBoxExtension on num {
  // Creates a vertical SizedBox with a specified height
  SizedBox get heightSpace => SizedBox(height: toDouble());

  // Creates a horizontal SizedBox with a specified width
  SizedBox get widthSpace => SizedBox(width: toDouble());

  // Creates a SizedBox with both width and height specified
  SizedBox get space => SizedBox(width: toDouble(), height: toDouble());
}
