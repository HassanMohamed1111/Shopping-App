import 'package:flutter/material.dart';
import 'package:products_app/Providers/Products.dart';
import 'package:products_app/Providers/login.dart';
import 'package:products_app/Providers/sign_up.dart';
import 'package:products_app/Screens/Login.dart';
import 'package:products_app/Screens/products.dart';
import 'package:provider/provider.dart';

import 'Screens/sign_up.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => LoginProvider(),),
        ChangeNotifierProvider(create: (context) => SignUpProvider(),),
        ChangeNotifierProvider(create: (context) => ProductsProvider(),)
      ],
      child: MaterialApp(
        home: SignUpScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
