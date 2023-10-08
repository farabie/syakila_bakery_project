part of 'pages.dart';

class HomePage extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(
                top: 24,
                left: 32,
                right: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                        width: 50,
                        height: 50,
                        child: Image.asset(
                          'images/small_logo.png',
                        ),
                      ),
                      SizedBox(
                        width: 50,
                        height: 50,
                        child: Image.asset(
                          'images/Icon_cart.png',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Hi, Annie Shayna',
                    style: normalFontStyle.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                          height: 20,
                          child: Image.asset('images/icon_locate.png')),
                      const SizedBox(
                        width: 12,
                      ),
                      Text(
                        'Perumahan Griya Medan No 64',
                        style: normalFontStyle.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(right: 14),
                    height: 36,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 2),
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                          )
                        ]),
                    child: Container(
                      margin: EdgeInsets.only(
                        left: 14,
                        top: 10,
                        bottom: 7,
                        right: 102,
                      ),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.search,
                            color: Colors.grey,
                            size: 20,
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            child: TextField(
                              controller: searchController,
                              maxLines: 1,
                              textAlign: TextAlign.left,
                              decoration: InputDecoration(
                                hintText: 'Search Your Favorite Cake',
                                hintStyle: normalFontStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.grey,
                                ),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    'Discover by category',
                    style: normalFontStyle.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 20,
                      bottom: 20,
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          CustomTapWidget(
                            color: mainColor,
                            name: 'All',
                            colorsText: Colors.white,
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          CustomTapWidget(
                            color: Colors.transparent,
                            name: 'Donut',
                            colorsText: Colors.grey,
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          CustomTapWidget(
                            color: Colors.transparent,
                            name: 'Cup Cake',
                            colorsText: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Text(
                    'Deliciouses Cake Promo ',
                    style: normalFontStyle.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 210,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        final ProductCake cake = productCakeList[index];
                        return CustomImageCake(
                          imageCake: cake.imageCake,
                          nameCake: cake.nameCake,
                          typeCake: cake.flavorCake,
                          priceCake: cake.price.toString(),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailPage(
                                  cake: cake,
                                ),
                              ),
                            );
                          },
                        );
                      },
                      itemCount: productCakeList.length,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Recommended for you',
                    style: normalFontStyle.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        CustomPromoImage(
                          imagePromo: 'images/dessert_image1.jpg',
                          nameCake: 'Creamy Cake Chocolate',
                          price: 'Rp. 5.000',
                          onTap: () {},
                        ),
                        const SizedBox(
                          width: 24,
                        ),
                        CustomPromoImage(
                          imagePromo: 'images/dessert_image2.jpg',
                          nameCake: 'Creamy Cake Chocolate',
                          price: 'Rp. 5.000',
                          onTap: () {},
                        ),
                        const SizedBox(
                          width: 24,
                        ),
                        CustomPromoImage(
                          imagePromo: 'images/dessert_image4.jpg',
                          nameCake: 'Creamy Cake Chocolate',
                          price: 'Rp. 5.000',
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Popular Cake',
                    style: normalFontStyle.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomImageCake(
                          imageCake: 'images/dessert_image2.jpg',
                          nameCake: 'Muffin Creamy',
                          typeCake: 'Chocolate',
                          priceCake: 'Rp. 5.000',
                          onTap: () {},
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        CustomImageCake(
                          imageCake: 'images/cake_image2.jpg',
                          nameCake: 'Muffin Creamy',
                          typeCake: 'Chocolate',
                          priceCake: 'Rp. 5.000',
                          onTap: () {},
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        CustomImageCake(
                          imageCake: 'images/dessert_image3.jpg',
                          nameCake: 'Muffin Creamy',
                          typeCake: 'Chocolate',
                          priceCake: 'Rp. 5.000',
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
