import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  // const ProfileScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.grey.shade200,
      child: Center(
        child: Text("Profile"),
      ),
    );
  }
}
