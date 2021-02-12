import 'package:flutter/material.dart';
import 'package:test_furniture_app/views/login/init_login.dart';
import 'package:test_furniture_app/views/shop/shop_category.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      //home: InitLogin(),
      home: ShopCategory(),
    );
  }
}