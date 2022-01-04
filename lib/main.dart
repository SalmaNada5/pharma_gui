import 'package:flutter/material.dart';
import 'package:pharma/screens/home.dart';
import 'package:pharma/screens/login_screen.dart';
import 'package:pharma/screens/register_screen.dart';
import 'screens/search_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      initialRoute: 'home',
      routes: {
        'home': (context) => HomePage(),
        'login': (context) => LogInScreen(),
        'registration': (context) => RegisterScreen(),
        'search': (context) => SearchScreen(),
      },
    );
  }
}
