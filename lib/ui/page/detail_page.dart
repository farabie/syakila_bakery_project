part of 'pages.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.4,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage('images/cake_image1.jpg'),
                  fit: BoxFit.cover,
                )),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
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
                        "Muffin Creamy",
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
                        "(45 Reviews)",
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
                            "Rp. 5.000",
                            style: normalFontStyle.copyWith(
                              fontSize: 24,
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
                      "Medium eggs, vegetable oil, semi-skimmed milk, golden caster sugar, self-raising flour ( or same plain flour and baking power), salt, chocolate chips",
                      textAlign: TextAlign.justify,
                      style: normalFontStyle.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
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
                              percentNutrient: 30,
                              nameNutrient: 'Calories',
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            CustomIngredient(
                              colorNutrient: 0xff48DFC3,
                              percentNutrient: 20,
                              nameNutrient: 'Fat',
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            CustomIngredient(
                              colorNutrient: 0xff0FBBD6,
                              percentNutrient: 25,
                              nameNutrient: 'Protein',
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            CustomIngredient(
                              colorNutrient: 0xffEFE835,
                              percentNutrient: 15,
                              nameNutrient: 'Carbo',
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width * 0.35,
            top: MediaQuery.of(context).size.height * 0.32,
            child: Material(
              borderRadius: BorderRadius.circular(20),
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
            ),
          ),
        ],
      ),
    );
  }
}
