import 'package:bigcart_ecommerce_app/Providers/auth_provider.dart';
import 'package:bigcart_ecommerce_app/Providers/cart_provider.dart';
import 'package:bigcart_ecommerce_app/Providers/category_provider.dart';
import 'package:bigcart_ecommerce_app/Providers/product_provider.dart';
import 'package:bigcart_ecommerce_app/Providers/user_provider.dart';
import 'package:bigcart_ecommerce_app/Screens/Splash_Screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Models/UserModel.dart';
import 'Providers/order_provider.dart';
import 'Screens/Home_Screen.dart';
import 'Screens/Login_Screen.dart';
import 'Utility/shared_preference.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=> Auth_Provider()),
        ChangeNotifierProvider(create: (_)=>User_Provider()),
        ChangeNotifierProvider(create: (_)=>Category_Provider()),
        ChangeNotifierProvider(create: (_)=>Cart_Provider()),
        ChangeNotifierProvider(create: (_)=>Product_Provider()),
        ChangeNotifierProvider(create: (_)=>Order_Provider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner:  false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColorLight: const Color(0xffEBFFD7),
          primaryColorDark: const Color(0xff6CC51D),
          primaryColor: const Color(0xffAEDC81),
          fontFamily: 'Poppins',
        ),
        home: Splash_Screen(),
      ),
    );
  }
}

