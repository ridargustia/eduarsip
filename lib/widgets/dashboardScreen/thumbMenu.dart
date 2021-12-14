import 'package:flutter/material.dart';

class ThumbMenu extends StatelessWidget {
  final String? title;
  final IconData? icon;
  ThumbMenu({this.title, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.grey.shade300,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 3),
            child: FittedBox(
              alignment: Alignment.topCenter,
              fit: BoxFit.contain,
              child: Text(
                title!,
                style: TextStyle(
                  fontSize: 8,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                // border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                color: Colors.white,
              ),
              child: Center(
                child: Icon(
                  icon,
                  size: 30,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
