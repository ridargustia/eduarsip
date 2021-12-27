import 'package:flutter/material.dart';

class SearchForm extends StatelessWidget {
  SearchForm({
    required this.bodyHeight,
    required this.hintText,
  });

  final double bodyHeight;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: bodyHeight * 0.1,
      width: double.infinity,
      // color: Colors.redAccent.shade200,
      padding: EdgeInsets.all(5),
      child: TextField(
        decoration: InputDecoration(
          hintStyle: TextStyle(color: Colors.grey.shade400),
          hintText: hintText,
          border: OutlineInputBorder(),
          prefixIcon: Icon(Icons.search),
          contentPadding: EdgeInsets.all(5),
        ),
      ),
    );
  }
}
