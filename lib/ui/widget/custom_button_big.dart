part of 'widget.dart';

class CustomButtonBig extends StatelessWidget {
  final String nameButton;
  final void Function() onTap;

  CustomButtonBig({required this.nameButton, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 45,
      child: Material(
        elevation: 1,
        color: mainColor,
        borderRadius: BorderRadius.circular(10),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(10),
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
