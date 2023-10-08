part of 'widget.dart';

class CustomImageCake extends StatelessWidget {
  String imageCake;
  String nameCake;
  String typeCake;
  int priceCake;
  final void Function() onTap;

  CustomImageCake({
    required this.imageCake,
    required this.nameCake,
    required this.typeCake,
    required this.priceCake,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GestureDetector(
          onTap: onTap,
          child: Card(
            elevation: 3,
            child: Container(
              margin: const EdgeInsets.only(
                top: 16,
              ),
              padding: const EdgeInsets.only(bottom: 10, right: 10, left: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: 135,
                    height: 91,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(
                            imageCake,
                          ),
                          fit: BoxFit.cover,
                        )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    nameCake,
                    textAlign: TextAlign.start,
                    style: normalFontStyle.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    typeCake,
                    textAlign: TextAlign.start,
                    style: normalFontStyle.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Rp. ${priceCake}',
                    textAlign: TextAlign.start,
                    style: normalFontStyle.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 3,
          right: 2,
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              color: mainColor,
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add,
                size: 25,
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}
