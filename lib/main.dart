import 'package:ecommerce_app_flutter/presentation/home/pages/main_navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ecommerce App",
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        )
      ),
      home: MainNavigation(),
    );
  }

}