import 'package:flutter/material.dart';
import 'package:qrscanner/views/landing_page.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
         primaryColor: Colors.white,
        accentColor: Color(0xFFE7E9F5),
      ),
      home: LandingPage(),
    );
  }
}
