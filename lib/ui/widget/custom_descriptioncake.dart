part of 'widget.dart';

class CustomDescriptionCake extends StatelessWidget {
  String nameCake;
  String reviewCake;
  String flavorCake;
  String ingredients;
  int price;
  int caloryValues;
  int fatValues;
  int proteinValues;
  int carboValues;

  CustomDescriptionCake({
    required this.nameCake,
    required this.flavorCake,
    required this.ingredients,
    required this.reviewCake,
    required this.price,
    required this.caloryValues,
    required this.fatValues,
    required this.proteinValues,
    required this.carboValues,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.65,
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        bottom: 24,
        top: 36,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                nameCake,
                style: normalFontStyle.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Icon(
                Icons.star,
                size: 24,
                color: mainColor,
              ),
              const Icon(
                Icons.star,
                size: 24,
                color: mainColor,
              ),
              const Icon(
                Icons.star,
                size: 24,
                color: mainColor,
              ),
              const Icon(
                Icons.star,
                size: 24,
                color: mainColor,
              ),
              const Icon(
                Icons.star,
                size: 24,
                color: Colors.grey,
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                reviewCake,
                style: normalFontStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                width: 36,
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Rp. ${price}',
                    style: normalFontStyle.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Text(
            "Ingredients:",
            style: normalFontStyle.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              right: 40,
            ),
            child: Text(
              ingredients,
              textAlign: TextAlign.justify,
              style: normalFontStyle.copyWith(
                fontSize: 12,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.19,
            padding: const EdgeInsets.only(
              left: 14,
              right: 30,
              top: 8,
              bottom: 6,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: mainColor.withOpacity(0.7),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Nutrient Values",
                  style: normalFontStyle.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    CustomIngredient(
                      colorNutrient: 0xffE565A0,
                      percentNutrient: caloryValues,
                      nameNutrient: 'Calories',
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    CustomIngredient(
                      colorNutrient: 0xff48DFC3,
                      percentNutrient: fatValues,
                      nameNutrient: 'Fat',
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    CustomIngredient(
                      colorNutrient: 0xff0FBBD6,
                      percentNutrient: proteinValues,
                      nameNutrient: 'Protein',
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    CustomIngredient(
                      colorNutrient: 0xffEFE835,
                      percentNutrient: caloryValues,
                      nameNutrient: 'Carbo',
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 36,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                width: 160,
                height: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      color: mainColor,
                    )),
                child: Material(
                  elevation: 2,
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  child: InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(25),
                    splashColor: Colors.blue,
                    child: Center(
                        child: Text(
                      "Add to chart",
                      style: normalFontStyle.copyWith(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w700),
                    )),
                  ),
                ),
              ),
              SizedBox(
                width: 160,
                height: 45,
                child: Material(
                  elevation: 2,
                  color: mainColor,
                  borderRadius: BorderRadius.circular(25),
                  child: InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(25),
                    splashColor: Colors.blue,
                    child: Center(
                        child: Text(
                      "Buying Now",
                      style: normalFontStyle.copyWith(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w700),
                    )),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
