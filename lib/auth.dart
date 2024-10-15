import 'package:chips_research_funds/Components/button.dart';
import 'package:chips_research_funds/login.dart';
import 'package:chips_research_funds/signup.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 100.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Authentication",
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurpleAccent),
              ),
              Expanded(child: Image.asset("assets/background.jpg")),
              Container(
                margin:const  EdgeInsets.symmetric(horizontal: 30),
                child: Button(label: "LOGIN", press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginScreen()));
                }),
              ),
              const SizedBox(height: 10),
              Container(
                margin:const  EdgeInsets.symmetric(horizontal: 30),
                child: Button(label: "SIGNUP", press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignupScreen()));
                }),
              )
            ],
          ),
        ),
      )),
    );
  }
}
