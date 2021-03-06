import 'package:eduarsip/screens/peminjaman/recyclebinPeminjaman.dart';

import './listPeminjaman.dart';

import '../../providers/BodyHeight.dart';
import './addPeminjaman.dart';
import 'package:provider/provider.dart';

import '../../widgets/subMenu/buttonSubMenu.dart';
import 'package:flutter/material.dart';

class SubMenuPeminjaman extends StatelessWidget {
  // PeminjamanPage();
  static const routeName = '/submenu_peminjaman';

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

    return ChangeNotifierProvider(
      create: (context) => BodyHeight(bodyHeight),
      child: Scaffold(
        appBar: myAppBar,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.grey.shade200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ButtonSubMenu(
                title: "Tambah Peminjaman",
                onTap: () =>
                    Navigator.of(context).pushNamed(AddPeminjaman.routeName),
              ),
              SizedBox(
                height: bodyHeight * 0.05,
              ),
              ButtonSubMenu(
                title: "Data Peminjaman",
                onTap: () {
                  Navigator.of(context).pushNamed(ListPeminjaman.routeName);
                },
              ),
              SizedBox(
                height: bodyHeight * 0.05,
              ),
              ButtonSubMenu(
                title: "Recycle Bin",
                onTap: () {
                  Navigator.of(context)
                      .pushNamed(RecyclebinPeminjaman.routeName);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
