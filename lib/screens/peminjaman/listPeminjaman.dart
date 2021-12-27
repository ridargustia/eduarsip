import '../../widgets/searchInList/searchForm.dart';
import 'package:flutter/material.dart';
import '../../dummyData.dart' as listPeminjaman;

class ListPeminjaman extends StatelessWidget {
  static const routeName = '/list_peminjaman';
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

    //SIZE SCREENS
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final paddingTop = MediaQuery.of(context).padding.top;
    final bodyHeight =
        mediaQueryHeight - myAppBar.preferredSize.height - paddingTop;

    return Scaffold(
      appBar: myAppBar,
      body: Container(
        color: Colors.grey.shade200,
        child: Container(
          // color: Colors.blue.shade200,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(15)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400,
                offset: Offset(2, 4),
                blurRadius: 5,
                spreadRadius: 2,
              )
            ],
          ),
          margin: EdgeInsets.all(15),
          child: Column(
            children: [
              Container(
                height: bodyHeight * 0.1,
                width: double.infinity,
                alignment: Alignment.center,
                child: Text(
                  "Data Peminjaman",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
              Divider(
                color: Colors.grey.shade300,
                thickness: 3,
                height: 5,
              ),
              SearchForm(
                bodyHeight: bodyHeight,
                hintText: "Cari Peminjaman Arsip",
              ),
              Divider(
                color: Colors.grey.shade300,
                thickness: 2,
                height: 5,
              ),
              Expanded(
                child: Container(
                  // height: double.infinity,
                  // height: bodyHeight * 0.83,
                  width: double.infinity,
                  child: ListView.separated(
                    itemCount: listPeminjaman.listPeminjaman.length,
                    itemBuilder: (context, index) {
                      // print(listPeminjaman.listPeminjaman[index].toString());
                      return ExpansionTile(
                        backgroundColor: Colors.grey.shade300,
                        textColor: Colors.black,
                        iconColor: Colors.grey,
                        title: Text(
                          "${index + 1}. ${listPeminjaman.listPeminjaman[index]['nama_arsip']}",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        // subtitle: Text(
                        //   "${listPeminjaman.listPeminjaman[index]['tgl_pengembalian']}",
                        // ),
                        children: [
                          Container(
                            // height: 200,
                            color: Colors.grey.shade200,
                            // alignment: Alignment.centerLeft,
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 20),

                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Tgl Peminjaman"),
                                    Text(
                                      "${listPeminjaman.listPeminjaman[index]['tgl_peminjaman']}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                SizedBox(height: bodyHeight * 0.02),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Tgl Pengembalian"),
                                    Text(
                                      "${listPeminjaman.listPeminjaman[index]['tgl_pengembalian']}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                SizedBox(height: bodyHeight * 0.02),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.4,
                                      child: Text("Nama Arsip"),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.4,
                                      child: Text(
                                        "${listPeminjaman.listPeminjaman[index]['nama_arsip']}",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.right,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: bodyHeight * 0.02),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.4,
                                      child: Text("Nama Peminjam"),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.4,
                                      child: Text(
                                        "${listPeminjaman.listPeminjaman[index]['nama_peminjam']}",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.right,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: bodyHeight * 0.02),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.4,
                                      child: Text("Divisi"),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.4,
                                      child: Text(
                                        "${listPeminjaman.listPeminjaman[index]['divisi']}",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.right,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: bodyHeight * 0.02),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.4,
                                      child: Text("Cabang"),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.4,
                                      child: Text(
                                        "${listPeminjaman.listPeminjaman[index]['cabang']}",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.right,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: bodyHeight * 0.02),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.4,
                                      child: Text("Instansi"),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.4,
                                      child: Text(
                                        "${listPeminjaman.listPeminjaman[index]['instansi']}",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.right,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: bodyHeight * 0.02),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.4,
                                      child: Text("Created At"),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.4,
                                      child: Text(
                                        "${listPeminjaman.listPeminjaman[index]['created_at']}",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.right,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: bodyHeight * 0.02),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.4,
                                      child: Text("Created By"),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.4,
                                      child: Text(
                                        "${listPeminjaman.listPeminjaman[index]['created_by']}",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.right,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                    separatorBuilder: (context, index) {
                      return Divider(
                        color: Colors.grey.shade300,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
