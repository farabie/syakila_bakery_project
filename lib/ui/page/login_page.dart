part of 'pages.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            margin: EdgeInsets.only(
              top: 36,
              right: 40,
              left: 40,
              bottom: 80,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 70,
                      width: 70,
                      child: Image.asset('images/small_logo.png'),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 25),
                      child: Text(
                        'Syakila',
                        style: normalFontStyle.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: mainColor,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 25),
                      child: Text(
                        'Bakery',
                        style: normalFontStyle.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: secondColor,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Quick, Fresh, &\nDelicious Cake ',
                  style: normalFontStyle.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                CustomTextField(
                  textInput: 'Username',
                  controller: usernameController,
                  onChanged: (value) {},
                  obsecureText: false,
                ),
                const SizedBox(
                  height: 24,
                ),
                CustomTextField(
                  textInput: 'Password',
                  controller: passwordController,
                  onChanged: (value) {},
                  obsecureText: true,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.3,
                ),
                CustomButtonBig(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  },
                  nameButton: 'Login',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
