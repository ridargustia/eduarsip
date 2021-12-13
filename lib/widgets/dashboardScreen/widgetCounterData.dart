import '../../providers/BodyHeight.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WidgetCounterData extends StatelessWidget {
  Color? widgetColor;
  String? count;
  String? title;
  Color? iconColor;
  WidgetCounterData({
    this.widgetColor,
    this.count,
    this.title,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    final bodyHeight = Provider.of<BodyHeight>(context, listen: false);
    return Container(
      decoration: BoxDecoration(
        color: widgetColor,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      height: bodyHeight.height! * 0.10,
      width: MediaQuery.of(context).size.width * 0.9,
      child: Column(
        children: [
          SizedBox(
            height: bodyHeight.height! * 0.02,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: bodyHeight.height! * 0.07,
            // color: Colors.amber.shade100,
            child: Center(
              child: Text(
                count!,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: bodyHeight.height! * 0.06,
            // color: Colors.red.shade100,
            child: Center(
              child: Text(
                title!,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 15,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Opacity(
                opacity: 0.1,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                    color: Colors.black,
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: bodyHeight.height! * 0.05,
                  // color: Colors.grey,
                ),
              ),
              Container(
                // color: Colors.amber.shade100,
                height: bodyHeight.height! * 0.05,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Selengkapnya",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        // fontFamily: 'Poppins',
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      child: Icon(
                        Icons.arrow_forward,
                        size: 15,
                        color: iconColor,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
