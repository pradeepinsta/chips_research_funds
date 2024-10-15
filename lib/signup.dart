import 'package:chips_research_funds/Components/button.dart';
import 'package:chips_research_funds/Components/textfield.dart';
import 'package:chips_research_funds/login.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  //controllers
  final fullName = TextEditingController();
  final usrName = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 20, left: 25),
                    child: Text("Register new Account",style: TextStyle(color: Colors.deepPurpleAccent, fontSize: 45, fontWeight: FontWeight.bold),),
                  ),

                  InputField(hint: "Full name", icon: Icons.person, controller: fullName),
                  InputField(hint: "Email", icon: Icons.email, controller: email),
                  InputField(hint: "Username", icon: Icons.account_circle, controller: usrName),
                  InputField(hint: "Password", icon: Icons.lock, controller: password,passwordVisible: true,),
                  InputField(hint: "Re-enter Password", icon: Icons.lock, controller: confirmPassword,passwordVisible: true,),

                  const SizedBox(height: 15),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 35),
                      child: Button(label: "SIGN UP", press: (){})
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Alreay have an account?", style: TextStyle(color: Colors.grey),),
                      TextButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginScreen()));
                          },
                          child: Text("LOGIN"))
                    ],
                  )
                ],

              )),
        ),
      ),
    );
  }
}
