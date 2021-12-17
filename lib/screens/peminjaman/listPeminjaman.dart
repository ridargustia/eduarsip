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
      body: ListView.builder(
        itemCount: listPeminjaman.listPeminjaman.length,
        itemBuilder: (context, index) {
          print(listPeminjaman.listPeminjaman[index].toString());
          return ListTile(
            leading: CircleAvatar(
              // backgroundColor: Colors.blue.shade300,
              backgroundImage: AssetImage("assets/images/bg_drawer.jpg"),
            ),
            title: Text(
              "${listPeminjaman.listPeminjaman[index]['nama_arsip']}",
            ),
            subtitle: Text(
              "${listPeminjaman.listPeminjaman[index]['tgl_pengembalian']}",
            ),
            trailing: Text(
                "${listPeminjaman.listPeminjaman[index]['tgl_peminjaman']}"),
          );
        },
      ),
    );
  }
}
