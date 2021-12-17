import '../providers/BodyHeight.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dropdown_search/dropdown_search.dart';

class HomeScreen extends StatelessWidget {
  // const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bodyHeight = Provider.of<BodyHeight>(context, listen: false);

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        height: bodyHeight.height! * 0.89,
        width: MediaQuery.of(context).size.width,
        color: Colors.grey.shade200,
        child: Column(
          children: [
            SizedBox(
              height: bodyHeight.height! * 0.04,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              width: MediaQuery.of(context).size.width * 0.9,
              height: bodyHeight.height! * 0.5,
              // color: Colors.grey.shade400,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    offset: Offset(2, 4),
                    blurRadius: 5,
                    spreadRadius: 2,
                  )
                ],
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Cari Arsip",
                    style: TextStyle(
                      fontSize: 19,
                    ),
                  ),
                  SizedBox(
                    height: bodyHeight.height! * 0.03,
                  ),
                  TextField(
                    // cursorHeight: 20,
                    // style: TextStyle(height: 1),
                    decoration: InputDecoration(
                      labelText: "Cari Arsip",
                      labelStyle: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 17,
                      ),
                      hintStyle: TextStyle(
                        fontSize: 15,
                        color: Colors.grey.shade400,
                      ),
                      hintText: "Masukkan kata kunci",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      prefixIcon: Icon(Icons.search),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 1),
                    ),
                  ),
                  SizedBox(
                    height: bodyHeight.height! * 0.03,
                  ),
                  DropdownSearch<String>(
                    mode: Mode.MENU,
                    showSelectedItems: true,
                    items: ["Manager", "Eksternal", "Internal", 'IT'],
                    dropdownSearchDecoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 2,
                      ),
                      labelText: "Divisi",
                      labelStyle: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 17,
                      ),
                      hintStyle: TextStyle(
                        fontSize: 15,
                        color: Colors.grey.shade400,
                      ),
                      hintText: "Pilih divisi",
                    ),
                    onChanged: print,
                    showClearButton: true,
                    // selectedItem: "Brazil",
                  ),
                  SizedBox(
                    height: bodyHeight.height! * 0.05,
                  ),
                  InkWell(
                    child: Container(
                      // height: bodyHeight * 0.1,
                      // width: MediaQuery.of(context).size.width * 0.9,
                      padding: EdgeInsets.symmetric(vertical: 10),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade200,
                            offset: Offset(2, 4),
                            blurRadius: 5,
                            spreadRadius: 2,
                          )
                        ],
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color(0xff03a9f4),
                            Color(0xff01579b),
                          ],
                        ),
                      ),
                      child: Text(
                        'Cari',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
