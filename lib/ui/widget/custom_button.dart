part of 'widget.dart';

class CustomButton extends StatelessWidget {
  final String nameButton;
  final void Function() onTap;

  CustomButton({this.nameButton = "", required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      height: 45,
      child: Material(
        elevation: 2,
        color: mainColor,
        borderRadius: BorderRadius.circular(25),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(25),
          splashColor: Colors.blue,
          child: Center(
              child: Text(
            nameButton,
            style: normalFontStyle.copyWith(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.w700),
          )),
        ),
      ),
    );
  }
}
