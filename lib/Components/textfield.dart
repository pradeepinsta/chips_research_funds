import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String hint;
  final IconData icon;
  final bool passwordVisible;
  final TextEditingController controller;
  const InputField({super.key, required this.hint, required this.icon, required this.controller, this.passwordVisible = false});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding:const EdgeInsets.symmetric(horizontal: 10),
      margin:const EdgeInsets.symmetric(vertical: 10),
      width: size.width *.9,
      height: 55,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(30)
      ),

      child: Center(
        child: TextFormField(
          obscureText: passwordVisible!,
          controller: controller,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hint,

            icon: Icon(icon)
          ),
        ),
      ),
    );
  }
}
