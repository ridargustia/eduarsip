import 'package:badges/badges.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_awesome_select/flutter_awesome_select.dart';
import '../../dummyData.dart' as dummy;

class EditProfileUser extends StatefulWidget {
  // const AddUser({ Key? key }) : super(key: key);
  static const routeName = '/edit_profile_user';

  @override
  _EditProfileUserState createState() => _EditProfileUserState();
}

class _EditProfileUserState extends State<EditProfileUser> {
  DateTime _birthdate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    final myAppBar = AppBar(
      iconTheme: IconThemeData(color: Colors.black),
      backgroundColor: Colors.white,
      centerTitle: true,
      title: Image.asset(
        "assets/images/logo_transparant_resize.png",
        width: 120,
      ),
    );

    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final paddingTop = MediaQuery.of(context).padding.top;

    final bodyHeight =
        mediaQueryHeight - myAppBar.preferredSize.height - paddingTop;

    return Scaffold(
        appBar: myAppBar,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            // height: bodyHeight,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 10,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "PERSONAL",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: bodyHeight * 0.03,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Full Name",
                      style: TextStyle(
                        fontSize: 15,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade200,
                            blurRadius: 5,
                            offset: Offset(2, 4),
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: TextField(
                        // controller: TextEditingController(
                        //   text:
                        //       "${_selectDatePeminjaman.toLocal()}".split(' ')[0],
                        // ),
                        controller: TextEditingController(
                            text: dummy.listUser[0]['name']),
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                        ),
                        obscureText: false,
                        decoration: InputDecoration(
                          // hintText: "Input Full Name",
                          // hintStyle: TextStyle(
                          //   fontFamily: 'Poppins',
                          //   color: Colors.grey.shade400,
                          //   fontWeight: FontWeight.w200,
                          // ),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          border: OutlineInputBorder(
                            // borderSide: BorderSide(),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: bodyHeight * 0.02,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Gender",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade200,
                            blurRadius: 5,
                            offset: Offset(2, 4),
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: DropdownSearch<String>(
                        selectedItem: dummy.listUser[0]['gender'],
                        mode: Mode.MENU,
                        showSelectedItems: true,
                        items: ["Laki-laki", "Perempuan"],
                        dropdownSearchDecoration: InputDecoration(
                          hintText: "- Pilih Jenis Kelamin -",
                          hintStyle: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.grey.shade400,
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 0.8,
                          ),
                        ),
                        onChanged: print,
                        showClearButton: true,
                        maxHeight: 120,
                        // selectedItem: "Brazil",
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: bodyHeight * 0.02,
                ),
                Container(
                  // color: Colors.amber,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Birthplace",
                            style: TextStyle(
                              fontSize: 15,
                              // fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.46,
                            margin: EdgeInsets.only(top: 5),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade200,
                                  blurRadius: 5,
                                  offset: Offset(2, 4),
                                  spreadRadius: 2,
                                ),
                              ],
                            ),
                            child: TextField(
                              // controller: TextEditingController(
                              //   text:
                              //       "${_selectDatePeminjaman.toLocal()}".split(' ')[0],
                              // ),
                              controller: TextEditingController(
                                  text: dummy.listUser[0]['birthplace']),
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                              ),
                              obscureText: false,
                              decoration: InputDecoration(
                                // hintText: "Input Full Name",
                                // hintStyle: TextStyle(
                                //   fontFamily: 'Poppins',
                                //   color: Colors.grey.shade400,
                                //   fontWeight: FontWeight.w200,
                                // ),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 20),
                                border: OutlineInputBorder(
                                  // borderSide: BorderSide(),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                fillColor: Colors.white,
                                filled: true,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Birthdate",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.46,
                            margin: EdgeInsets.only(top: 5),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade200,
                                  blurRadius: 5,
                                  offset: Offset(2, 4),
                                  spreadRadius: 2,
                                ),
                              ],
                            ),
                            child: TextField(
                              onTap: () {
                                showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(1999),
                                  lastDate: DateTime(2050),
                                  initialEntryMode: DatePickerEntryMode.input,
                                ).then((value) {
                                  if (value != null) {
                                    setState(() {
                                      _birthdate = value;
                                    });
                                  }
                                });
                              },
                              textAlign: TextAlign.center,
                              readOnly: true,
                              controller:
                                  (dummy.listUser[0]['birthdate'] != null)
                                      ? TextEditingController(
                                          text: dummy.listUser[0]['birthdate'],
                                        )
                                      : TextEditingController(
                                          // text: "${_birthdate.toLocal()}"
                                          //     .split(' ')[0],
                                          ),
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                              ),
                              obscureText: false,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                border: OutlineInputBorder(
                                  // borderSide: BorderSide(),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                fillColor: Colors.white,
                                filled: true,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: bodyHeight * 0.02,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Phone No.",
                      style: TextStyle(
                        fontSize: 15,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(top: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade200,
                            blurRadius: 5,
                            offset: Offset(2, 4),
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: TextField(
                        // controller: TextEditingController(
                        //   text:
                        //       "${_selectDatePeminjaman.toLocal()}".split(' ')[0],
                        // ),
                        controller: TextEditingController(
                            text: dummy.listUser[0]['phone_no']),
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                        ),
                        obscureText: false,
                        decoration: InputDecoration(
                          // hintText: "Input Full Name",
                          // hintStyle: TextStyle(
                          //   fontFamily: 'Poppins',
                          //   color: Colors.grey.shade400,
                          //   fontWeight: FontWeight.w200,
                          // ),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          border: OutlineInputBorder(
                            // borderSide: BorderSide(),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: bodyHeight * 0.02,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Address",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(top: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade200,
                            blurRadius: 5,
                            offset: Offset(2, 4),
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: TextField(
                        maxLines: 2,
                        keyboardType: TextInputType.multiline,
                        // controller: TextEditingController(
                        //   text:
                        //       "${_selectDatePeminjaman.toLocal()}".split(' ')[0],
                        // ),
                        controller: TextEditingController(
                            text: dummy.listUser[0]['address']),
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                        ),
                        obscureText: false,
                        decoration: InputDecoration(
                          // hintText: "Masukkan deskripsi Arsip..",
                          // hintStyle: TextStyle(
                          //   fontFamily: 'Poppins',
                          //   color: Colors.grey.shade400,
                          // ),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 20),
                          border: OutlineInputBorder(
                            // borderSide: BorderSide(),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          fillColor: Colors.white,
                          filled: true,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: bodyHeight * 0.02,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Current Photo",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: bodyHeight * 0.3,
                      margin: EdgeInsets.only(top: 5),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        border: Border.all(color: Colors.black54),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade200,
                            blurRadius: 5,
                            offset: Offset(2, 4),
                            spreadRadius: 2,
                          )
                        ],
                      ),
                      child: Image.asset(
                        "assets/images/noimage.jpg",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: bodyHeight * 0.02,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Change Photo",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    GestureDetector(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: bodyHeight * 0.09,
                        margin: EdgeInsets.only(top: 5),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Colors.black54),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade200,
                              blurRadius: 5,
                              offset: Offset(2, 4),
                              spreadRadius: 2,
                            )
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.upload_file,
                              color: Colors.grey.shade500,
                            ),
                            Text(
                              "Upload Photo",
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Poppins',
                                color: Colors.grey.shade500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
                SizedBox(height: bodyHeight * 0.05),
                Container(
                  // height: bodyHeight * 0.3,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade400,
                        offset: Offset(2, 4),
                        blurRadius: 5,
                        spreadRadius: 2,
                      )
                    ],
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 15,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "AUTH",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: bodyHeight * 0.03,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Username (*)",
                            style: TextStyle(
                              fontSize: 15,
                              // fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            margin: EdgeInsets.only(top: 5),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade200,
                                  blurRadius: 5,
                                  offset: Offset(2, 4),
                                  spreadRadius: 2,
                                ),
                              ],
                            ),
                            child: TextField(
                              // controller: TextEditingController(
                              //   text:
                              //       "${_selectDatePeminjaman.toLocal()}".split(' ')[0],
                              // ),
                              controller: TextEditingController(
                                  text: dummy.listUser[0]['username']),
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                              ),
                              obscureText: false,
                              decoration: InputDecoration(
                                // hintText: "Input Full Name",
                                // hintStyle: TextStyle(
                                //   fontFamily: 'Poppins',
                                //   color: Colors.grey.shade400,
                                //   fontWeight: FontWeight.w200,
                                // ),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 20),
                                border: OutlineInputBorder(
                                  // borderSide: BorderSide(),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                fillColor: Colors.white,
                                filled: true,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: bodyHeight * 0.02,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Email (*)",
                            style: TextStyle(
                              fontSize: 15,
                              // fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            margin: EdgeInsets.only(top: 5),
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade200,
                                  blurRadius: 5,
                                  offset: Offset(2, 4),
                                  spreadRadius: 2,
                                ),
                              ],
                            ),
                            child: TextField(
                              // controller: TextEditingController(
                              //   text:
                              //       "${_selectDatePeminjaman.toLocal()}".split(' ')[0],
                              // ),
                              controller: TextEditingController(
                                  text: dummy.listUser[0]['email']),
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                              ),
                              obscureText: false,
                              decoration: InputDecoration(
                                // hintText: "Input Full Name",
                                // hintStyle: TextStyle(
                                //   fontFamily: 'Poppins',
                                //   color: Colors.grey.shade400,
                                //   fontWeight: FontWeight.w200,
                                // ),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 20),
                                border: OutlineInputBorder(
                                  // borderSide: BorderSide(),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                fillColor: Colors.white,
                                filled: true,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: bodyHeight * 0.02,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Current Data Access (*)",
                            style: TextStyle(
                              fontSize: 15,
                              // fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                              width: double.infinity,
                              margin: EdgeInsets.only(top: 5),
                              // decoration: BoxDecoration(
                              //   borderRadius:
                              //       BorderRadius.all(Radius.circular(10)),
                              //   boxShadow: [
                              //     BoxShadow(
                              //       color: Colors.grey.shade200,
                              //       blurRadius: 5,
                              //       offset: Offset(2, 4),
                              //       spreadRadius: 2,
                              //     ),
                              //   ],
                              // ),
                              child: Row(
                                children: dummy.listUser[0]['data_access']
                                    .map<Widget>((data) {
                                  return Padding(
                                    padding: EdgeInsets.only(right: 3),
                                    child: Badge(
                                      toAnimate: false,
                                      badgeColor: Colors.green,
                                      borderRadius: BorderRadius.circular(5),
                                      padding: EdgeInsets.all(5),
                                      // alignment: Alignment.center,
                                      // position:
                                      //     BadgePosition.center(),
                                      shape: BadgeShape.square,
                                      badgeContent: Text(
                                        data,
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  );
                                }).toList(),
                              )),
                        ],
                      ),
                      SizedBox(height: bodyHeight * 0.05),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.42,
                              height: bodyHeight * 0.09,
                              // color: Colors.amber,
                              padding: EdgeInsets.symmetric(vertical: 10),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.shade200,
                                    blurRadius: 5,
                                    offset: Offset(2, 4),
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.save,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  Text(
                                    'Simpan',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 15,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.42,
                              height: bodyHeight * 0.09,
                              // color: Colors.amber,
                              padding: EdgeInsets.symmetric(vertical: 10),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.shade200,
                                    blurRadius: 5,
                                    offset: Offset(2, 4),
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.refresh,
                                    color: Colors.black,
                                    size: 20,
                                  ),
                                  Text(
                                    'Reset',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 15,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: bodyHeight * 0.04),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
