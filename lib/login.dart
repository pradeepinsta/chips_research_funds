import 'package:chips_research_funds/Components/button.dart';
import 'package:chips_research_funds/Components/textfield.dart';
import 'package:chips_research_funds/profile.dart';
import 'package:chips_research_funds/signup.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  //controllers
  final usrName = TextEditingController();
  final password = TextEditingController();

  bool isChecked = false;
  bool isLoginTrue = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 50),
                  const Text("LOGIN", style: TextStyle(color: Colors.deepPurpleAccent, fontSize: 35,fontWeight: FontWeight.bold),),
                  const SizedBox(height: 40),
                  Image.asset("assets/researchicon.png", height: 200.0,width: 200.0,),

                  const SizedBox(height: 60),
                  InputField(hint: "Username", icon: Icons.account_circle, controller: usrName),
                  InputField(hint: "Password", icon: Icons.lock, controller: password, passwordVisible: true),

                  ListTile(
                    horizontalTitleGap: 2,
                    title: const Text("Remember me",style: TextStyle(fontSize: 13),),
                    leading: Checkbox(
                        value: isChecked, onChanged: (value)
                    {
                      setState(() {
                        isChecked =!isChecked;
                      });
                    }),
                  ),
                  
                  Container(
                      margin:const  EdgeInsets.symmetric(horizontal: 30),
                      child: Button(
                          label: "LOGIN",
                          press: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> const Profile()));
                          })),

                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     const Text("Don't have an account?", style: TextStyle(color: Colors.grey),),
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignupScreen()));
                      }, child:const Text("SIGN UP"))
                    ],
                  ),
                  
                 isLoginTrue? Text("Username or Password is incorrect", style: TextStyle(color: Colors.red.shade900),):const SizedBox(),
                ],

          )),
        ),
      ),
    );
  }
}
