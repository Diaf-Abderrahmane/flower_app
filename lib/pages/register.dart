// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flower_app/pages/login.dart';
import 'package:flower_app/shared%20widgets/colors.dart';
import 'package:flower_app/shared%20widgets/constants.dart';
import 'package:flower_app/shared%20widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Register extends StatefulWidget {
  Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isLoading = false;

  register() async {
    setState(() {
      isLoading = true;
    });
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
    setState(() {
      isLoading = false;
    });
  }

  // deletes the controller when moving to a different screen
  @override
  void dispose() {
    // TODO: implement dispose
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 238, 238),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(33.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // MyTextField(
                  //   textInputType: TextInputType.emailAddress,
                  //   isPassword: false,
                  //   hintText: "Enter your email",
                  // ),

                  TextField(
                    keyboardType: TextInputType.text,
                    // for password obscure
                    obscureText: false,
                    decoration: decorationTextField.copyWith(
                        hintText: "Enter Your Username"),
                  ),
                  SizedBox(
                    height: 33,
                  ),
                  TextField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    // for password obscure
                    obscureText: false,
                    decoration: decorationTextField.copyWith(
                        hintText: "Enter Your Email"),
                  ),
                  SizedBox(
                    height: 33,
                  ),
                  TextField(
                    controller: passwordController,
                    keyboardType: TextInputType.text,
                    // for password obscure
                    obscureText: true,
                    decoration: decorationTextField.copyWith(
                        hintText: "Enter Your Password"),
                  ),
                  SizedBox(
                    height: 33,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      register();
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(valBlue),
                      padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                    ),
                    child: isLoading
                        ? CircularProgressIndicator(
                            color: Colors.white,
                          )
                        : Text(
                            "Register",
                            style: TextStyle(fontSize: 19, color: Colors.white),
                          ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Do not have an account ?",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            // a method to navigate to another page through the class name and not the route name
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Login()));
                          },
                          child: Text(
                            "Sign in",
                            style: TextStyle(
                                color: valRed,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
