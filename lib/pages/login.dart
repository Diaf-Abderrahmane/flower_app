// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

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
              MyTextField(
                textInputType: TextInputType.emailAddress,
                isPassword: false,
                hintText: "Enter your email",
              ),
              SizedBox(
                height: 33,
              ),
              MyTextField(
                textInputType: TextInputType.text,
                isPassword: true,
                hintText: "Enter your password",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
