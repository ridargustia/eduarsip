import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

class AddBaris extends StatelessWidget {
  static const routeName = '/add_baris';

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
          height: bodyHeight,
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
                    child: DropdownSearch<String>(
                      mode: Mode.MENU,
                      showSelectedItems: true,
                      items: [
                        "EduArsip",
                        "Artha Amanah",
                        "Bina Ummah",
                        'Bhapedes'
                      ],
                      dropdownSearchDecoration: InputDecoration(
                        hintText: "- Silahkan Pilih Instansi -",
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
                    child: DropdownSearch<String>(
                      mode: Mode.MENU,
                      showSelectedItems: true,
                      items: ["Pusat", "Sanden", "Bantul", 'Kretek'],
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
              SizedBox(height: bodyHeight * 0.03),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nama Baris",
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
                        hintText: "Masukkan nama Baris",
                        hintStyle: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.grey.shade400,
                          fontWeight: FontWeight.w200,
                        ),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
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
