import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_awesome_select/flutter_awesome_select.dart';
import '../../dummyData.dart' as dummy;

class AddUser extends StatefulWidget {
  // const AddUser({ Key? key }) : super(key: key);
  static const routeName = '/add_user';

  @override
  _AddUserState createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
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
                              controller: TextEditingController(
                                text: "${_birthdate.toLocal()}".split(' ')[0],
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
                      "Photo",
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
                                  "Password (*)",
                                  style: TextStyle(
                                    fontSize: 15,
                                    // fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.42,
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
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.bold,
                                    ),
                                    obscureText: true,
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
                                  "Ulangi Password (*)",
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.42,
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
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.bold,
                                    ),
                                    obscureText: true,
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
                            "Instansi (*)",
                            style: TextStyle(
                              fontSize: 15,
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
                            child: DropdownSearch<String>(
                              mode: Mode.MENU,
                              showSelectedItems: true,
                              items: [
                                "EduArsip",
                                "BMT Artha Amanah Sanden",
                                "KSPPS BMT Bina Ummah",
                                "KSPPS Bhapedes"
                              ],
                              dropdownSearchDecoration: InputDecoration(
                                hintText: "- Pilih Instansi -",
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
                              // selectedItem: "Brazil",
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
                            "Cabang (*)",
                            style: TextStyle(
                              fontSize: 15,
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
                            child: DropdownSearch<String>(
                              mode: Mode.MENU,
                              showSelectedItems: true,
                              items: ["Godean", "Gamping", "Ambarukmo"],
                              dropdownSearchDecoration: InputDecoration(
                                hintText: "- Pilih Instansi Dulu -",
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
                              // selectedItem: "Brazil",
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
                            "Divisi (*)",
                            style: TextStyle(
                              fontSize: 15,
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
                            child: DropdownSearch<String>(
                              mode: Mode.MENU,
                              showSelectedItems: true,
                              items: ["Administrator", "IT", "Keuangan"],
                              dropdownSearchDecoration: InputDecoration(
                                hintText: "- Pilih Cabang Dulu -",
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
                              // selectedItem: "Brazil",
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
                            "Usertype (*)",
                            style: TextStyle(
                              fontSize: 15,
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
                            child: DropdownSearch<String>(
                              mode: Mode.MENU,
                              showSelectedItems: true,
                              items: [
                                "GrandAdmin",
                                "MasterAdmin",
                                "SuperAdmin",
                                "Administrator",
                                "Pegawai"
                              ],
                              dropdownSearchDecoration: InputDecoration(
                                hintText: "- Pilih Instansi Dulu -",
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
                              // selectedItem: "Brazil",
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
                          // Text(
                          //   "Jenis Arsip",
                          //   style: TextStyle(
                          //     fontSize: 13,
                          //     // color: Colors.grey,
                          //     fontFamily: 'Poppins',
                          //   ),
                          // ),
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              border: Border.all(color: Colors.black54),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade300,
                                  blurRadius: 5,
                                  offset: Offset(2, 4),
                                  spreadRadius: 2,
                                )
                              ],
                            ),
                            child: SmartSelect<String>.multiple(
                              choiceStyle: S2ChoiceStyle(
                                color: Colors.blue,
                              ),
                              title: 'Akses Data (*)',
                              selectedValue: dummy.selected_aksesData,
                              onChange: (selected) {
                                setState(() {
                                  dummy.selected_aksesData = selected?.value;
                                  // print(_hero.toString());
                                });
                              },
                              choiceItems: dummy.aksesData,
                              modalType: S2ModalType.bottomSheet,
                              modalStyle: S2ModalStyle(
                                clipBehavior: Clip.antiAlias,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(45.0),
                                    topRight: Radius.circular(45.0),
                                  ),
                                ),
                              ),
                              modalHeaderBuilder: (context, state) {
                                return Column(
                                  children: [
                                    Container(
                                      height: 5,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        color: Colors.grey[300],
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      margin: EdgeInsets.only(
                                        top: 15,
                                        bottom: 10,
                                      ),
                                    ),
                                    state.modalTitle,
                                    SizedBox(height: 15),
                                  ],
                                );
                              },
                              tileBuilder: (context, state) {
                                print(state);
                                return S2Tile.fromState(
                                  state,
                                  isTwoLine: true,
                                  // leading: const CircleAvatar(
                                  //   backgroundImage: NetworkImage(
                                  //     'https://source.unsplash.com/8I-ht65iRww/100x100',
                                  //   ),
                                  // ),
                                );
                              },
                            ),
                          ),
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
