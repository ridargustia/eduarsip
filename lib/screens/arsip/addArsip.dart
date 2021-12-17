import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_awesome_select/flutter_awesome_select.dart';
import '../../dummyData.dart' as dummy;

class AddArsip extends StatefulWidget {
  static const routeName = '/add_arsip';

  @override
  _AddArsipState createState() => _AddArsipState();
}

class _AddArsipState extends State<AddArsip> {
  DateTime _masaRetensi = DateTime.now();

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
                      items: ["Manager", "Eksternal", "Internal", 'IT'],
                      dropdownSearchDecoration: InputDecoration(
                        hintText: "-- Silahkan Pilih Instansi --",
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
                      // showSearchBox: true,
                      items: [
                        "Manager Cabang",
                        "Administrator",
                        "Internal",
                        'IT'
                      ],
                      dropdownSearchDecoration: InputDecoration(
                        hintText: "-- Pilih Instansi Dulu --",
                        hintStyle: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.grey.shade400,
                        ),
                        counterStyle: TextStyle(fontSize: 20),
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
                      // showClearButton: true,
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
                    child: DropdownSearch<String>(
                      mode: Mode.MENU,
                      showSelectedItems: true,
                      items: ["Manager", "Eksternal", "Internal", 'IT'],
                      dropdownSearchDecoration: InputDecoration(
                        hintText: "-- Pilih Cabang Dulu --",
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
                    "Lokasi Arsip",
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
                        hintText: "-- Pilih Cabang Dulu --",
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
                    "Kepemilikan Arsip",
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
                        hintText: "-- Pilih Divisi dulu --",
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
              Container(
                // color: Colors.amber,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "Rak",
                            style: TextStyle(
                              fontSize: 13,
                              // color: Colors.grey,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.46,
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
                          child: DropdownSearch<String>(
                            mode: Mode.MENU,
                            showSelectedItems: true,
                            items: ["1", "2", "3", '4'],
                            dropdownSearchDecoration: InputDecoration(
                              hintText: "- Pilih Rak -",
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 5),
                          child: Text(
                            "Box",
                            style: TextStyle(
                              fontSize: 13,
                              // color: Colors.grey,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.46,
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
                          margin: EdgeInsets.only(top: 5, left: 5),
                          child: DropdownSearch<String>(
                            mode: Mode.MENU,
                            showSelectedItems: true,
                            items: ["1", "2", "3", '4'],
                            dropdownSearchDecoration: InputDecoration(
                              hintText: "- Pilih Box -",
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
                  ],
                ),
              ),
              SizedBox(height: bodyHeight * 0.03),
              Container(
                // color: Colors.amber,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "Map",
                            style: TextStyle(
                              fontSize: 13,
                              // color: Colors.grey,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.46,
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
                          child: DropdownSearch<String>(
                            mode: Mode.MENU,
                            showSelectedItems: true,
                            items: ["1", "2", "3", '4'],
                            dropdownSearchDecoration: InputDecoration(
                              hintText: "- Pilih Map -",
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 5),
                          child: Text(
                            "Baris",
                            style: TextStyle(
                              fontSize: 13,
                              // color: Colors.grey,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.46,
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
                          margin: EdgeInsets.only(top: 5, left: 5),
                          child: DropdownSearch<String>(
                            mode: Mode.MENU,
                            showSelectedItems: true,
                            items: ["1", "2", "3", '4'],
                            dropdownSearchDecoration: InputDecoration(
                              hintText: "- Pilih Baris -",
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
                  ],
                ),
              ),
              SizedBox(height: bodyHeight * 0.03),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nomor Arsip",
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
                        hintText: "Masukkan no Arsip",
                        hintStyle: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.grey.shade400,
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
              SizedBox(height: bodyHeight * 0.03),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nama Arsip",
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
                        hintText: "Masukkan nama Arsip",
                        hintStyle: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.grey.shade400,
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
              SizedBox(height: bodyHeight * 0.03),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Deskripsi",
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
                      maxLines: 4,
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
                        hintText: "Masukkan deskripsi Arsip..",
                        hintStyle: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.grey.shade400,
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
              SizedBox(height: bodyHeight * 0.03),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Deskripsi Arsip",
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
                      maxLines: 4,
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
                        hintText: "Masukkan deskripsi Arsip..",
                        hintStyle: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.grey.shade400,
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
              SizedBox(height: bodyHeight * 0.03),
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
                      borderRadius: BorderRadius.all(Radius.circular(10)),
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
                      title: 'Jenis Arsip',
                      selectedValue: dummy.selected_jenisArsip,
                      onChange: (selected) {
                        setState(() {
                          dummy.selected_jenisArsip = selected?.value;
                          // print(_hero.toString());
                        });
                      },
                      choiceItems: dummy.jenisArsip,
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
              SizedBox(
                height: bodyHeight * 0.03,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Masa Retensi",
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
                            text: "${_masaRetensi.toLocal()}".split(' ')[0],
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
                                _masaRetensi = value;
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
              GestureDetector(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: bodyHeight * 0.09,
                  // margin: EdgeInsets.only(top: 5),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.upload_file,
                        color: Colors.grey.shade500,
                      ),
                      Text(
                        "Upload File",
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
              SizedBox(height: bodyHeight * 0.03),
              Container(
                margin: EdgeInsets.only(top: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
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
                child: SmartSelect<String?>.single(
                  choiceStyle: S2ChoiceStyle(
                    color: Colors.blue,
                  ),
                  title: 'Status Akses File',
                  selectedValue: dummy.selected_statusAksesFile,
                  onChange: (selected) {
                    setState(
                        () => dummy.selected_statusAksesFile = selected.value);
                  },
                  choiceType: S2ChoiceType.radios,
                  choiceItems: dummy.statusAksesFile,
                  modalType: S2ModalType.bottomSheet,
                  modalHeader: true,
                  modalHeaderStyle: S2ModalHeaderStyle(
                    backgroundColor: Colors.blue,
                    textStyle: TextStyle(color: Colors.white),
                  ),
                  modalConfig: const S2ModalConfig(
                    style: S2ModalStyle(
                      elevation: 3,
                      // shape: RoundedRectangleBorder(
                      // borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      // ),
                    ),
                  ),
                  tileBuilder: (context, state) {
                    return S2Tile.fromState(
                      state,
                      isTwoLine: false,
                    );
                  },
                ),
              ),
              SizedBox(height: bodyHeight * 0.03),
              Container(
                margin: EdgeInsets.only(top: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
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
                child: SmartSelect<String?>.single(
                  choiceStyle: S2ChoiceStyle(
                    color: Colors.blue,
                  ),
                  title: 'Keterangan',
                  selectedValue: dummy.selected_keterangan,
                  onChange: (selected) {
                    setState(() => dummy.selected_keterangan = selected.value);
                  },
                  choiceType: S2ChoiceType.radios,
                  choiceItems: dummy.keterangan,
                  modalType: S2ModalType.bottomSheet,
                  modalHeader: true,
                  modalHeaderStyle: S2ModalHeaderStyle(
                    backgroundColor: Colors.blue,
                    textStyle: TextStyle(color: Colors.white),
                  ),
                  modalConfig: const S2ModalConfig(
                    style: S2ModalStyle(
                      elevation: 3,
                      // shape: RoundedRectangleBorder(
                      //   borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      // ),
                    ),
                  ),
                  tileBuilder: (context, state) {
                    return S2Tile.fromState(
                      state,
                      isTwoLine: false,
                    );
                  },
                ),
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
