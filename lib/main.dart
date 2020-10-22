import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

import 'Header.dart';
import 'InputWrapper.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(

        splash: Icons.home,
        nextScreen: Login(),
        splashTransition: SplashTransition.slideTransition,
        backgroundColor: Colors.amber,
        duration: 3000,
      ),
    );
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topCenter,colors: [
            Colors.amber[500],
            Colors.amber[300],
            Colors.amber[400]
          ]),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(height: 80,),
            Header(),
            Expanded(child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60),
                  topRight: Radius.circular(60),
                )
,              ),
              child: InputWrapper(),
            ))
          ],
        ),
      ),
    );
  }

}







