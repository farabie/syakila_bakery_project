part of 'pages.dart';

class OnboardingFirst extends StatefulWidget {
  const OnboardingFirst({super.key});

  @override
  State<OnboardingFirst> createState() => _OnboardingFirstState();
}

class _OnboardingFirstState extends State<OnboardingFirst> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.20,
          left: 30,
          right: 18,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: SizedBox(
                height: 240,
                child: Image.asset('images/ilustrastion1.png'),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Quick, Fresh & \nDelicious Bakery',
                  style: normalFontStyle.copyWith(
                    fontSize: 28,
                    color: blackColor,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  'Made by hand, from scratch, with love.',
                  style: normalFontStyle.copyWith(
                    fontSize: 15,
                    color: blackColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                Align(
                    alignment: Alignment.bottomRight,
                    child: CustomButton(
                      nameButton: 'Selanjutnya',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OnboardingSecond(),
                          ),
                        );
                      },
                    ))
              ],
            )
          ],
        ),
      ),
    ));
  }
}
