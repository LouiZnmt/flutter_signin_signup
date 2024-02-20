import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onboarding_screen/component/my_button.dart';
import 'package:onboarding_screen/component/my_textfield.dart';
import 'package:onboarding_screen/screen/sign_up_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Screen'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
        child: Form(
            child: Column(
          children: [
            const Spacer(),
            Text(
              "Hello, ready to get started",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                textStyle: Theme.of(context).textTheme.displayLarge,
                fontSize: 24,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
              ),
            ),
            const SizedBox(height: 10,),
            Text(
              "Please sign-in with your email and password",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                textStyle: Theme.of(context).textTheme.displayLarge,
                fontSize: 16,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 30,
            ),
            MyTextField(
                controller: emailController,
                hintText: "Enter your email",
                obscureText: false,
                labelText: "Email"),
              const SizedBox(height: 20,
              ),
            MyTextField(
                controller: passwordController,
                hintText: "Enter your password",
                obscureText: false,
                labelText: "Password"),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(onPressed: () {}, 
                      child: Text(
                        "Forgot password",
                        style: GoogleFonts.lato(
                          textStyle: Theme.of(context).textTheme.displaySmall,
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          fontStyle: FontStyle.italic,
                        ),
                        )),
                    ],
                  ),
                ),
                MyButton(onTap: () {}, hinText: "Sign-in"),
                const SizedBox(height: 30,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.blue
                          )
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text("or continue with", 
                          style: GoogleFonts.lato(
                            textStyle: Theme.of(context).textTheme.displaySmall,
                            fontSize: 16,
                            fontStyle: FontStyle.normal,                      
                          ),
                          ),
                        ),
                        const Expanded(child: Divider(
                          color: Colors.blue,
                        ))
                     ]),
                    ),
                    Text("Not a member",
                      style: GoogleFonts.lato(
                            textStyle: Theme.of(context).textTheme.displaySmall,
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            fontStyle: FontStyle.normal,                      
                          )),
                          const SizedBox(width: 1),
                          TextButton(
                            onPressed: () {
                          Navigator.push(
                            context, 
                            MaterialPageRoute(
                              builder: (context) => SignUpScreen(),
                              ),
                            );
  },
                      child: Text(
                        "Register now",
                        style: GoogleFonts.lato(
                          textStyle: Theme.of(context).textTheme.displaySmall,
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          fontStyle: FontStyle.italic,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                        const Spacer(),
          ],
        )),
      ));
  }
}