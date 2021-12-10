import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  LoginButton({this.bodyHeight});

  final double? bodyHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: bodyHeight! * 0.08,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(vertical: 10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(25)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            offset: Offset(2, 4),
            blurRadius: 5,
            spreadRadius: 2,
          )
        ],
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xff03a9f4),
            Color(0xff01579b),
          ],
        ),
      ),
      child: Text(
        'Login',
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
      ),
    );
  }
}
