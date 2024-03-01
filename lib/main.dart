import 'package:flutter/material.dart';
import 'package:testapp/features/Login/presentation/pages/InitialScreens/initial_screen_one.dart';
import 'package:testapp/features/Login/presentation/pages/InitialScreens/initial_screen_three.dart';
import 'package:testapp/features/Login/presentation/pages/InitialScreens/initial_screen_two.dart';
import 'package:testapp/features/Login/presentation/pages/InitialScreens/login_or_register.dart';
import 'package:testapp/features/Login/presentation/pages/login_page.dart';
import 'package:testapp/features/Login/presentation/pages/register_page.dart';
import 'package:testapp/layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          fontFamily: "Poppins"),
      initialRoute: '/layout',
      routes: {
        "/": (context) => InitialScreenOne(),
        '/initial_page_first': (context) => InitialScreenOne(),
        '/initial_page_second': (context) => InitialScreenTwo(),
        '/initial_page_three': (context) => InitialScreenThree(),
        '/login_or_register': (context) => LoginOrRegister(),
        '/register': (context) => RegisterPage(),
        '/login': (context) => LoginPage(),
        '/layout': (context) => Layout(),
      },
    );
  }
}
