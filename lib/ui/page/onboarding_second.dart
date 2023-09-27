part of 'pages.dart';

class OnboardingSecond extends StatelessWidget {
  const OnboardingSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(
          right: 16,
          left: 16,
          top: MediaQuery.of(context).size.height * 0.25,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(
                left: 14,
                right: 14,
              ),
              height: 150,
              width: 300,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'images/ilustrastion2.png',
                      ))),
            ),
            const SizedBox(
              height: 24,
            ),
            Text(
              'Order and Enjoy\nUnforgettable Taste',
              style: normalFontStyle.copyWith(
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: CustomButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                  );
                },
                nameButton: 'Mulai',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
