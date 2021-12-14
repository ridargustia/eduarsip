import 'package:eduarsip/providers/BodyHeight.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  // const ProfileScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bodyHeight = Provider.of<BodyHeight>(context, listen: false);

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        padding: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        // height: bodyHeight,
        color: Colors.grey.shade200,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: bodyHeight.height! * 0.18,
              // color: Colors.grey.shade300,
              child: CircleAvatar(
                backgroundColor: Colors.grey.shade400,
                child: Icon(
                  Icons.person,
                  color: Colors.grey.shade200,
                  size: 80,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 5),
              alignment: Alignment.topCenter,
              width: MediaQuery.of(context).size.width,
              height: bodyHeight.height! * 0.13,
              // color: Colors.amber.shade300,
              child: Column(
                children: [
                  Text(
                    "Nickname",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Edit Profile",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            // SizedBox(
            //   height: bodyHeight * 0.01,
            // ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: bodyHeight.height! * 0.18,
              // color: Colors.grey.shade400,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nama",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade400,
                          blurRadius: 5,
                          offset: Offset(2, 4),
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: TextField(
                      controller: TextEditingController(text: "Nickname"),
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                      ),
                      obscureText: false,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 20, vertical: 15.0),
                        hintText: "Masukkan nama anda",
                        hintStyle: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.grey.shade400,
                        ),
                        border: OutlineInputBorder(
                          // borderSide: BorderSide(),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        fillColor: Color(0xfff3f3f4),
                        filled: true,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: bodyHeight.height! * 0.18,
              // color: Colors.grey.shade400,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Email",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade400,
                          blurRadius: 5,
                          offset: Offset(2, 4),
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: TextField(
                      controller:
                          TextEditingController(text: 'nickname@gmail.com'),
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                      ),
                      obscureText: false,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 20, vertical: 15.0),
                        hintText: "Masukkan email anda",
                        hintStyle: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.grey.shade400,
                        ),
                        border: OutlineInputBorder(
                          // borderSide: BorderSide(),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        fillColor: Color(0xfff3f3f4),
                        filled: true,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: bodyHeight.height! * 0.18,
              // color: Colors.grey.shade400,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Password",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade400,
                          blurRadius: 5,
                          offset: Offset(2, 4),
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: TextField(
                      controller: TextEditingController(text: 'nickname123'),
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                      ),
                      obscureText: true,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 20, vertical: 15.0),
                        hintText: "Masukkan password anda",
                        hintStyle: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.grey.shade400,
                        ),
                        border: OutlineInputBorder(
                          // borderSide: BorderSide(),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                        fillColor: Color(0xfff3f3f4),
                        filled: true,
                      ),
                    ),
                  )
                ],
              ),
            ),
            GestureDetector(
              child: Container(
                margin: EdgeInsets.only(top: 10),
                height: bodyHeight.height! * 0.09,
                width: MediaQuery.of(context).size.width * 0.7,
                padding: EdgeInsets.symmetric(vertical: 10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      offset: Offset(2, 4),
                      blurRadius: 5,
                      spreadRadius: 2,
                    )
                  ],
                ),
                child: Text(
                  'Simpan',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
