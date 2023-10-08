part of 'model.dart';

class ProductCake {
  String nameCake;
  String flavorCake;
  String ingredients;
  String reviewCake;
  String imageCake;
  int price;
  int caloryValues;
  int fatValues;
  int proteinValues;
  int carboValues;

  ProductCake({
    required this.nameCake,
    required this.flavorCake,
    required this.ingredients,
    required this.reviewCake,
    required this.imageCake,
    required this.price,
    required this.caloryValues,
    required this.fatValues,
    required this.proteinValues,
    required this.carboValues,
  });
}

var productCakeList = [
  ProductCake(
    nameCake: 'ChocoCake',
    flavorCake: 'Chocolate',
    ingredients:
        'Medium eggs, vegetable oil, semi-skimmed milk, golden caster sugar, self-raising flour ( or same plain flour and baking power), salt, chocolate chips',
    reviewCake: '(45 Reviews)',
    imageCake: 'images/cake_image1.jpg',
    price: 100000,
    caloryValues: 20,
    fatValues: 15,
    proteinValues: 10,
    carboValues: 30,
  ),
  ProductCake(
    nameCake: 'Grenter Cake',
    flavorCake: 'Mint',
    ingredients:
        'Medium eggs, vegetable oil, semi-skimmed milk, golden caster sugar, self-raising flour ( or same plain flour and baking power), salt, chocolate chips',
    reviewCake: '(35 Reviews)',
    imageCake: 'images/cake_image2.jpg',
    price: 200000,
    caloryValues: 10,
    fatValues: 20,
    proteinValues: 15,
    carboValues: 25,
  ),
  ProductCake(
    nameCake: 'Cookies Cake',
    flavorCake: 'Mint',
    ingredients:
        'Medium eggs, vegetable oil, semi-skimmed milk, golden caster sugar, self-raising flour ( or same plain flour and baking power), salt, chocolate chips',
    reviewCake: '(35 Reviews)',
    imageCake: 'images/cake_image4.jpg',
    price: 200000,
    caloryValues: 10,
    fatValues: 20,
    proteinValues: 15,
    carboValues: 25,
  ),
];
