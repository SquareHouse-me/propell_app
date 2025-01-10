import 'export_general.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback onTap;
  final Widget childWidget;
  final double? width;
  final double? height;
  final double? borderRadius, elevation;

  final IconData? iconData;

  final Color? bgColor;
  const PrimaryButton(
      {Key? key,
      required this.onTap,
      required this.childWidget,
      this.width,
      this.height,
      this.elevation = 5,
      this.borderRadius = 7,
      required this.bgColor,
      this.iconData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      onTap: () {
        onTap();
      },
      child: Card(
        margin: EdgeInsets.zero,
        elevation: elevation ?? 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius!),
        ),
        child: Container(
          margin: EdgeInsets.zero,
          padding: EdgeInsets.zero,
          height: height,
          alignment: Alignment.center,
          width: width,
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(borderRadius!),
          ),
          child: childWidget,
        ),
      ),
    );
  }
}
