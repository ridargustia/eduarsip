import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

class AddPengembalian extends StatefulWidget {
  static const routeName = '/add_pengembalian';

  @override
  _AddPengembalianState createState() => _AddPengembalianState();
}

class _AddPengembalianState extends State<AddPengembalian> {
  DateTime _selectDatePeminjaman = DateTime.now();

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
          width: MediaQuery.of(context).size.width,
          // height: bodyHeight,
          color: Colors.grey.shade200,
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Tanggal Pengembalian",
                    style: TextStyle(
                      fontSize: 13,
                      // color: Colors.grey,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        // height: bodyHeight * 0.1,
                        // color: Colors.amber,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade300,
                              blurRadius: 5,
                              offset: Offset(2, 4),
                              spreadRadius: 2,
                            ),
                          ],
                        ),
                        margin: EdgeInsets.only(top: 5),
                        child: TextField(
                          textAlign: TextAlign.center,
                          readOnly: true,
                          controller: TextEditingController(
                            text: "${_selectDatePeminjaman.toLocal()}"
                                .split(' ')[0],
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
                      IconButton(
                        onPressed: () {
                          showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1999),
                            lastDate: DateTime(2050),
                            initialEntryMode: DatePickerEntryMode.input,
                          ).then((value) {
                            if (value != null) {
                              setState(() {
                                _selectDatePeminjaman = value;
                              });
                            }
                          });
                        },
                        icon: Icon(Icons.calendar_today),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: bodyHeight * 0.03),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nama Arsip yang akan dikembalikan",
                    style: TextStyle(
                      fontSize: 13,
                      // color: Colors.grey,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(top: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 5,
                          offset: Offset(2, 4),
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: DropdownSearch<String>(
                      mode: Mode.MENU,
                      showSelectedItems: true,
                      items: ["Manager", "Eksternal", "Internal", 'IT'],
                      dropdownSearchDecoration: InputDecoration(
                        hintText: "-- Belum ada peminjaman Arsip --",
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
              SizedBox(height: bodyHeight * 0.03),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nama Peminjam",
                    style: TextStyle(
                      fontSize: 13,
                      // color: Colors.grey,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(top: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 5,
                          offset: Offset(2, 4),
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: TextField(
                      textAlign: TextAlign.center,
                      enabled: false,
                      // controller: TextEditingController(
                      //   text: "${_selectDatePeminjaman.toLocal()}"
                      //       .split(' ')[0],
                      // ),
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                      ),
                      obscureText: false,
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
              SizedBox(height: bodyHeight * 0.03),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Divisi",
                    style: TextStyle(
                      fontSize: 13,
                      // color: Colors.grey,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(top: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 5,
                          offset: Offset(2, 4),
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: TextField(
                      textAlign: TextAlign.center,
                      enabled: false,
                      // controller: TextEditingController(
                      //   text: "${_selectDatePeminjaman.toLocal()}"
                      //       .split(' ')[0],
                      // ),
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                      ),
                      obscureText: false,
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
              SizedBox(height: bodyHeight * 0.03),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Cabang",
                    style: TextStyle(
                      fontSize: 13,
                      // color: Colors.grey,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(top: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 5,
                          offset: Offset(2, 4),
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: TextField(
                      textAlign: TextAlign.center,
                      enabled: false,
                      // controller: TextEditingController(
                      //   text: "${_selectDatePeminjaman.toLocal()}"
                      //       .split(' ')[0],
                      // ),
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                      ),
                      obscureText: false,
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
              SizedBox(height: bodyHeight * 0.03),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Instansi",
                    style: TextStyle(
                      fontSize: 13,
                      // color: Colors.grey,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(top: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 5,
                          offset: Offset(2, 4),
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: TextField(
                      textAlign: TextAlign.center,
                      enabled: false,
                      // controller: TextEditingController(
                      //   text: "${_selectDatePeminjaman.toLocal()}"
                      //       .split(' ')[0],
                      // ),
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                      ),
                      obscureText: false,
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
              SizedBox(height: bodyHeight * 0.05),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: bodyHeight * 0.09,
                      // color: Colors.amber,
                      padding: EdgeInsets.symmetric(vertical: 10),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade300,
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
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: bodyHeight * 0.09,
                      // color: Colors.amber,
                      padding: EdgeInsets.symmetric(vertical: 10),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade300,
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
      ),
    );
  }
}
