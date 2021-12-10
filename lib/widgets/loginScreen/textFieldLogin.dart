import 'package:flutter/material.dart';

class TextFieldLogin extends StatelessWidget {
  bool? obscureStatus;
  IconData? icon = Icons.person;
  String? hintText;
  TextFieldLogin({
    this.obscureStatus,
    this.icon,
    this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          // controller: userNameController..text = 'admin', //Jika langsung terisi 'admin'
          // controller: userNameController,//Berdasarkan inputan
          style: TextStyle(fontSize: 18),
          obscureText: obscureStatus!,
          // cursorRadius: Radius.circular(50),
          decoration: InputDecoration(
            suffixIcon: Icon(
              icon,
              color: Colors.grey,
            ),
            contentPadding:
                EdgeInsets.symmetric(horizontal: 20, vertical: 15.0),
            hintText: hintText,
            hintStyle: TextStyle(
              color: Colors.grey.shade400,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(25),
              ),
            ),
            fillColor: Color(0xfff3f3f4),
            filled: true,
          ),
        )
      ],
    );
  }
}
