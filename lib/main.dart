import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:waverr/pages/onboarding/onboarding.dart';
import 'package:waverr/styles/colors.dart';

void main() {

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
   statusBarColor: Colors.white,
   statusBarIconBrightness: Brightness.dark,

   systemNavigationBarColor: Colors.white,
   
));
  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Waverr',
      theme: ThemeData(
        primaryColor:  cPrimary,
      ),
      themeMode: ThemeMode.dark,
      initialRoute: OnBoarding.route,
      debugShowCheckedModeBanner: false,

      routes: {
        OnBoarding.route: (BuildContext context) => OnBoarding(),
      },
    );
  }
}
