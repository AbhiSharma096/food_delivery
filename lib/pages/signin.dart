import 'package:flutter/material.dart';
import 'package:food_delivery/components/mybutton.dart';
import 'package:food_delivery/components/mytextfeild.dart';
import 'package:food_delivery/pages/homa_page.dart';

class Signin extends StatefulWidget {
  final Function()? onTap;

  const Signin({super.key, this.onTap});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  void signin() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>  const HomePage(),
        ));
  }

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
              'Welcome back, nice to see you!',
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

            //button
            MyButton(
              text: "Signin",
              onTap: signin,
            ),
            const SizedBox(
              height: 25,
            ),

            //forgot pasword
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have a account?",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
                const SizedBox(
                  width: 4,
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    'Register now!',
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
