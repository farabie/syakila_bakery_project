part of 'pages.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 200,
            child: Image.asset('images/big_logo.png'),
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Syakila",
                style: normalFontStyle.copyWith(
                    fontSize: 28,
                    color: secondColor,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                "Bakery",
                style: normalFontStyle.copyWith(
                    fontSize: 28,
                    color: mainColor,
                    fontWeight: FontWeight.w700),
              ),
            ],
          )
        ],
      )),
    );
  }

  Future<Timer> startTimer() async {
    return Timer(Duration(seconds: 3), onDone);
  }

  void onDone() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => OnboardingFirst(),
      ),
    );
  }
}
