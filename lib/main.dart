import 'package:flutter/material.dart';
import 'package:syakila_bakery_project/ui/page/pages.dart';

void main() => runApp(SyakilaBakeryApp());

class SyakilaBakeryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
