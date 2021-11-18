
import 'package:flutter/material.dart';
import 'package:shamo_apps_flutter/pages/home/main_page.dart';
import 'package:shamo_apps_flutter/pages/signin_page.dart';
import 'package:shamo_apps_flutter/pages/signup_page.dart';
import 'package:shamo_apps_flutter/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => const SplashPage(),
        '/sign-in' : (context) => const SignInPage(),
        '/sign-up' : (context) => const SignUpPage(),
        '/home' : (context) => const HomePage(),
      },
    );
  }
}
