part of 'widget.dart';

class CustomButtonDesc extends StatelessWidget {
  const CustomButtonDesc({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(20),
      color: Colors.transparent,
      elevation: 3,
      child: Container(
        width: 130,
        height: 45,
        padding: const EdgeInsets.only(
          left: 24,
          right: 24,
        ),
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(20),
            color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "-",
              style: normalFontStyle.copyWith(
                fontSize: 28,
                fontWeight: FontWeight.w700,
                color: const Color(0xffC4C4C4),
              ),
            ),
            Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: mainColor,
              ),
              child: Center(
                child: Text(
                  "1",
                  style: normalFontStyle.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Text(
              "+",
              style: normalFontStyle.copyWith(
                fontSize: 28,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
