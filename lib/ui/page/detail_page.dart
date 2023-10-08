part of 'pages.dart';

class DetailPage extends StatelessWidget {
  final ProductCake cake;
  const DetailPage({Key? key, required this.cake}) : super(key: key);

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
                  image: AssetImage(cake.imageCake),
                  fit: BoxFit.cover,
                )),
          ),
          SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            child: Container(
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.width * 0.6,
              ),
              child: CustomDescriptionCake(
                nameCake: cake.nameCake,
                flavorCake: cake.flavorCake,
                ingredients: cake.ingredients,
                reviewCake: cake.reviewCake,
                price: cake.price,
                caloryValues: cake.caloryValues,
                fatValues: cake.fatValues,
                proteinValues: cake.proteinValues,
                carboValues: cake.carboValues,
              ),
            ),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width * 0.35,
            top: MediaQuery.of(context).size.height * 0.32,
            child: CustomButtonDesc(),
          ),
        ],
      ),
    );
  }
}
