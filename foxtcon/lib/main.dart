import 'dart:async';
import 'package:flutter/material.dart';
import 'package:com.foxtcon.foxtconapp/screens/bottom_bar_screen.dart';
import 'package:com.foxtcon.foxtconapp/screens/dashbard_screen.dart';
import 'package:foxtcon/screens/usersForms/forms.dart';
import 'package:foxtcon/screens/welcome_screen.dart';
import 'package:foxtcon/theme.dart';
import 'package:foxtcon/utility/shared_pre.dart';
import 'package:foxtcon/utility/string_and_image.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: appThemeData,
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late bool login = false;
  @override
  void initState() {
    super.initState();
     Future.delayed(const Duration(microseconds: 200), () async {
      bool loggedIn = await getloggedIn();
      setState(() {
        login = loggedIn;
      });
    });
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => login == true ? const BottomBarScreen() : const WelcomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: const [
              Spacer(),
               Image(
                image: AssetImage(imgIcon),
              ),
              Image(
                image: AssetImage(imgIconText),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

