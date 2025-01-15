import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:propell/configs/generalWidgets/textstyle_component.dart';
import 'package:propell/configs/res/colors.dart';
import 'package:propell/configs/res/icons.dart';
import 'package:propell/configs/utlis/extension.dart';
import 'package:responsive_framework/responsive_framework.dart';

class WebHeaderTitle extends StatelessWidget {
  const WebHeaderTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveRowColumnItem(
        child: ResponsiveRowColumn(
      layout: ResponsiveRowColumnType.COLUMN,
      columnCrossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ResponsiveRowColumnItem(
            child: TextComponents(
          color: Colors.white,
          title: 'Book your consultation now!',
          size: 24,
          weight: FontWeight.bold,
        )),
        ResponsiveRowColumnItem(
          child: 5.heightSpace,
        ),
        ResponsiveRowColumnItem(
            child: ResponsiveRowColumn(
          layout: ResponsiveRowColumnType.ROW,
          rowSpacing: 11,
          children: [
            ResponsiveRowColumnItem(
              child: SvgPicture.asset(
                AppIcons.starIcon,
                color: AppColor.kGreen1Color,
              ),
            ),
            ResponsiveRowColumnItem(
              child: ResponsiveRowColumnItem(
                child: TextComponents(
                  color: AppColor.kLightGrey,
                  title: 'Select your preferred day and time',
                  size: 14,
                  weight: FontWeight.w400,
                ),
              ),
            )
          ],
        )),
        ResponsiveRowColumnItem(
          child: 10.heightSpace,
        ),
        ResponsiveRowColumnItem(
            child: ResponsiveRowColumn(
          layout: ResponsiveRowColumnType.ROW,
          rowSpacing: 11,
          children: [
            ResponsiveRowColumnItem(
              child: SvgPicture.asset(
                AppIcons.starIcon,
                color: AppColor.kGreen1Color,
              ),
            ),
            ResponsiveRowColumnItem(
              child: ResponsiveRowColumnItem(
                child: TextComponents(
                  color: AppColor.kLightGrey,
                  title: 'Pay',
                  size: 14,
                  weight: FontWeight.w400,
                ),
              ),
            )
          ],
        )),
        ResponsiveRowColumnItem(
          child: 10.heightSpace,
        ),
        ResponsiveRowColumnItem(
            child: ResponsiveRowColumn(
          layout: ResponsiveRowColumnType.ROW,
          rowSpacing: 11,
          children: [
            ResponsiveRowColumnItem(
              child: SvgPicture.asset(
                AppIcons.starIcon,
                color: AppColor.kGreen1Color,
              ),
            ),
            ResponsiveRowColumnItem(
              child: ResponsiveRowColumnItem(
                child: TextComponents(
                  color: AppColor.kLightGrey,
                  title: 'We will contact you!',
                  size: 14,
                  weight: FontWeight.w400,
                ),
              ),
            )
          ],
        ))
      ],
    ));
  }
}
