import 'package:flutter/material.dart';
import 'package:food_delivery/components/mybutton.dart';
import 'package:food_delivery/components/mytextfeild.dart';

class Signup extends StatefulWidget {
   final Function()? onTap;
  const Signup({super.key, this.onTap});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {


  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //icon
            const Icon(
              Icons.food_bank,
              size: 100,
            ),
            const SizedBox(
              height: 25,
            ),

            //welcome message
            const Text(
              'Register yourself.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(
              height: 25,
            ),

            //username
            MyTextField(
              controller: emailController,
              hintText: 'Email',
              obscureText: false,
            ),
            const SizedBox(
              height: 25,
            ),

            //password
            MyTextField(
              controller: passwordController,
              hintText: 'password',
              obscureText: true,
            ),
            const SizedBox(
              height: 25,
            ),

            MyTextField(
              controller: confirmPasswordController,
              hintText: 'Confirm password',
              obscureText: true,
            ),
            const SizedBox(
              height: 25,
            ),

            //button
            MyButton(
              text: "Signup",
              onTap: widget.onTap,
            ),
            const SizedBox(
              height: 25,
            ),

            //forgot pasword
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have a account?",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
                const SizedBox(
                  width: 4,
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    'Login now!',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.inversePrimary),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}