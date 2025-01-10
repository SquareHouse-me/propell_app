import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:propell/configs/generalWidgets/dashContainer/dashed_container.dart';
 

class DashPathPainter extends CustomPainter {
  final Paint paintStyle;
  final double blankWidth;
  final double dashedWidth;
  final double borderRadius;
  final BoxShape boxShape;

  DashPathPainter({
    required this.paintStyle,
    this.blankWidth = 4.0,
    this.dashedWidth = 4.0,
    this.borderRadius = 0.0,
    this.boxShape = BoxShape.rectangle,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Path path;
    final radius = Radius.circular(borderRadius);

    if (boxShape == BoxShape.rectangle) {
      if (borderRadius == 0.0) {
        path = Path()..addRect(Rect.fromLTWH(0.0, 0.0, size.width, size.height));
      } else {
        path = Path()
          ..addRRect(RRect.fromRectAndCorners(
            Rect.fromLTWH(0.0, 0.0, size.width, size.height),
            topLeft: radius,
            topRight: radius,
            bottomLeft: radius,
            bottomRight: radius,
          ));
      }
    } else {
      final circleRadius = size.width / 2;
      path = Path()
        ..addRRect(RRect.fromRectAndCorners(
          Rect.fromLTWH(0.0, 0.0, size.width, size.height),
          topLeft: Radius.circular(circleRadius),
          topRight: Radius.circular(circleRadius),
          bottomLeft: Radius.circular(circleRadius),
          bottomRight: Radius.circular(circleRadius),
        ));
    }

    canvas.drawPath(
      dashPath(
        path,
        dashArray: CircularIntervalList<double>([dashedWidth, blankWidth]),
      ),
      paintStyle,
    );
  }

  @override
  bool shouldRepaint(DashPathPainter oldDelegate) {
    return oldDelegate.blankWidth != blankWidth ||
        oldDelegate.dashedWidth != dashedWidth ||
        oldDelegate.borderRadius != borderRadius ||
        oldDelegate.boxShape != boxShape ||
        oldDelegate.paintStyle != paintStyle;
  }
}

/// Generates a dashed path from a source path.
Path dashPath(
  Path source, {
  required CircularIntervalList<double> dashArray,
  DashOffset? dashOffset,
}) {
  dashOffset ??= DashOffset.absolute(0.0);

  final Path dest = Path();
  for (final PathMetric metric in source.computeMetrics()) {
    double distance = dashOffset.calculate(metric.length);
    bool draw = true;
    while (distance < metric.length) {
      final double length = dashArray.next;
      if (draw) {
        dest.addPath(
          metric.extractPath(distance, distance + length),
          Offset.zero,
        );
      }
      distance += length;
      draw = !draw;
    }
  }
  return dest;
}

/// Dash offset helper class for managing offset types.
abstract class DashOffset {
  const DashOffset();

  factory DashOffset.absolute(double offset) => _AbsoluteDashOffset(offset);

  double calculate(double totalLength);
}

class _AbsoluteDashOffset extends DashOffset {
  final double offset;

  const _AbsoluteDashOffset(this.offset);

  @override
  double calculate(double totalLength) => offset;
}
