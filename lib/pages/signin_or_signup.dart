import 'package:flutter/material.dart';
import 'package:food_delivery/pages/signin.dart';
import 'package:food_delivery/pages/signup.dart';

class SigninOrSignup extends StatefulWidget {
  const SigninOrSignup({super.key});

  @override
  State<SigninOrSignup> createState() => _SigninOrSignupState();
}

class _SigninOrSignupState extends State<SigninOrSignup> {
  bool showSigninPage = true;

  void togelPage() {
    setState(() {
      showSigninPage = !showSigninPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showSigninPage == true) {
      return Signin(onTap: togelPage,);
    } else {
      return Signup(onTap: togelPage,);
    }
  }
}
