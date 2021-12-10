import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  // const DashboardScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.grey.shade200,
      child: Center(
        child: Text("Dashboard"),
      ),
    );
  }
}
