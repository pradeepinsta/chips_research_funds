import 'package:chips_research_funds/Components/button.dart';
import 'package:chips_research_funds/auth.dart';
import 'package:flutter/material.dart';

import 'JSON/users.dart';

class Profile extends StatelessWidget {
  final Users? profile;

  const Profile({super.key, this.profile});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 65.0, horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                backgroundColor: Colors.deepPurpleAccent,
                radius: 80,
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/user.jpg"),
                  radius: 75,
                ),
              ),

              Text(profile!.fullName??"",style:const TextStyle(fontSize: 28, color: Colors.black),),
              const Text("pradeepkumar@cmcvellore.ac.in",style: TextStyle(fontSize: 18, color: Colors.grey),),


              const SizedBox(height: 75,),
               ListTile(
                leading:const Icon(Icons.person, size: 30,),
                subtitle:const Text("Full Name"),
                title: Text(profile!.fullName??""),
              ),

              const SizedBox(height: 10,),
               ListTile(
                leading:const Icon(Icons.person, size: 30,),
                subtitle:const Text("Email"),
                title: Text(profile!.email??""),
              ),

              const SizedBox(height: 10,),
               ListTile(
                leading:const Icon(Icons.person, size: 30,),
                subtitle:const Text("Username"),
                title: Text(profile!.usrName??""),
              ),

              const SizedBox(height: 75,),
              Button(label: "LOGOUT", press: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const AuthScreen()));
              }),
             ],
            ),
          ),),
      ),
    );
  }
}
