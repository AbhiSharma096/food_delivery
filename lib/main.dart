

import 'package:flutter/material.dart';
import 'package:food_delivery/models/restaurant.dart';
import 'package:food_delivery/pages/signin_or_signup.dart';

import 'package:food_delivery/themes/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (context)=> ThemeProvider()),
      ChangeNotifierProvider(create: (context)=> Restaurant())
    ],
    child: const MyApp(),)
  );
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: Provider.of<ThemeProvider>(context).themeData,
      debugShowCheckedModeBanner: false,
      home: const SigninOrSignup(),
    );
  }
}
