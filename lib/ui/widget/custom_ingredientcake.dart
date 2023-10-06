part of 'widget.dart';

class CustomIngredient extends StatelessWidget {
  int percentNutrient;
  int colorNutrient;
  String nameNutrient;

  CustomIngredient({
    required this.percentNutrient,
    required this.nameNutrient,
    required this.colorNutrient,
  });

  @override
  Widget build(BuildContext context) {
    double containerHeight = 0.0;
    if (percentNutrient >= 30 && percentNutrient <= 50) {
      containerHeight = 40.00;
    } else if (percentNutrient == 25) {
      containerHeight = 35.00;
    } else if (percentNutrient >= 20 && percentNutrient < 25) {
      containerHeight = 30.00;
    } else if (percentNutrient >= 10 && percentNutrient < 20) {
      containerHeight = 25.00;
    }
    return Column(
      children: <Widget>[
        Container(
          width: 55,
          height: 65,
          padding: const EdgeInsets.only(
            top: 10,
            left: 5,
            right: 5,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                '$percentNutrient %',
                style: normalFontStyle.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Container(
                width: 43,
                height: containerHeight,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(colorNutrient),
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          nameNutrient,
          style: normalFontStyle.copyWith(
            fontSize: 12,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
