part of 'widget.dart';

class CustomTapWidget extends StatelessWidget {
  String name;
  Color color;
  Color colorsText;

  CustomTapWidget(
      {this.name = '', this.color = mainColor, this.colorsText = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: mainColor,
          width: 1,
        ),
        color: color,
      ),
      child: Center(
        child: Text(
          name,
          textAlign: TextAlign.center,
          style: normalFontStyle.copyWith(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: colorsText,
          ),
        ),
      ),
    );
  }
}
