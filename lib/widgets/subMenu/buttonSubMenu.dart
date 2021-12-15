import '../../providers/BodyHeight.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ButtonSubMenu extends StatelessWidget {
  final String title;
  final Function() onTap;

  ButtonSubMenu({
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final bodyHeight = Provider.of<BodyHeight>(context, listen: false);

    return GestureDetector(
      child: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width * 0.8,
        height: bodyHeight.height! * 0.1,
        // color: Colors.blue,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.all(Radius.circular(25)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              offset: Offset(2, 4),
              blurRadius: 5,
              spreadRadius: 2,
            )
          ],
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      onTap: onTap,
    );
  }
}
