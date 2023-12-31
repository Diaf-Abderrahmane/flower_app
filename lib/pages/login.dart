// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flower_app/shared%20widgets/colors.dart';
import 'package:flower_app/shared%20widgets/constants.dart';
import 'package:flower_app/shared%20widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(33.0),
          child: Column(
            children: [
              SizedBox(
                height: 33,
              ),
              // MyTextField(
              //   textInputType: TextInputType.emailAddress,
              //   isPassword: false,
              //   hintText: "Enter your email",
              // ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                // for password obscure
                obscureText: false,
                decoration:
                    decorationTextField.copyWith(hintText: "Enter Your Email"),
              ),
              SizedBox(
                height: 33,
              ),
              TextField(
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
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(BTNgreen),
                  padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8))),
                ),
                child: Text(
                  "Sign In",
                  style: TextStyle(fontSize: 19, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
