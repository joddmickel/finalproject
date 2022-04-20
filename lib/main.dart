import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'screens/registration_screen.dart';
import 'screens/login_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'STOCK AND INVENTORY';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: _title,
        theme: ThemeData(primarySwatch: Colors.blueGrey),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => SplashScreenView(
                navigateRoute: LoginScreen(),
                duration: 3000,
                imageSize: 130,
                imageSrc: "images/kindpng_2350524.png",
                backgroundColor: Colors.white,
              ),
          '/login': (context) => LoginScreen(),
          '/register': (context) => RegistrationScreen(),
          '/home': (context) => LoginScreen(),
        });
  }
}
