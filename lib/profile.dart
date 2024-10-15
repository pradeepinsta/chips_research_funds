import 'package:chips_research_funds/Components/button.dart';
import 'package:chips_research_funds/auth.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

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

              const Text("Pradeep Kumar",style: TextStyle(fontSize: 28, color: Colors.black),),
              // const Text("pradeepkumar@cmcvellore.ac.in",style: TextStyle(fontSize: 18, color: Colors.grey),),


              const SizedBox(height: 75,),
              const ListTile(
                leading: Icon(Icons.person, size: 30,),
                subtitle: Text("Full Name"),
                title: Text("Pradeep Kumar"),
              ),

              const SizedBox(height: 10,),
              const ListTile(
                leading: Icon(Icons.person, size: 30,),
                subtitle: Text("Email"),
                title: Text("pradeepkumar@cmcvellore.ac.in"),
              ),

              const SizedBox(height: 10,),
              const ListTile(
                leading: Icon(Icons.person, size: 30,),
                subtitle: Text("Username"),
                title: Text("T6449"),
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
