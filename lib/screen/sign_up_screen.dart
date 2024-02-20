import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onboarding_screen/component/my_button.dart';
import 'package:onboarding_screen/component/my_textfield.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final nameController = TextEditingController();
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: Column(
          children: [
            Spacer(),
            Text("Welcome to our community",
            style: GoogleFonts.lato(
              textStyle: Theme.of(context).textTheme.displayLarge,
              fontSize: 24,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
            )),
            Text("\n To get started, please provide your info to create an account",
            style: GoogleFonts.lato(
              textStyle: Theme.of(context).textTheme.displaySmall,
              fontSize: 16,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
            )),
            const SizedBox(height: 20,
            ),
            MyTextField(
              controller: nameController, 
              hintText: "Enter your name", 
              obscureText: false, 
              labelText: "name"),
            const SizedBox(height: 20,
            ),
            MyTextField(
              controller: emailController, 
              hintText: "Enter your email", 
              obscureText: false, 
              labelText: "email"),
            const SizedBox(height: 20,
            ),
              MyButton(onTap: () {}, hinText: 'Sign up'),
              Spacer(),
          ],
        )),
    );
  }
}