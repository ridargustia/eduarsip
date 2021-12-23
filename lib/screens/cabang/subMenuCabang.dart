import './listCabang.dart';

import './addCabang.dart';

import '../../providers/BodyHeight.dart';
import 'package:provider/provider.dart';

import '../../widgets/subMenu/buttonSubMenu.dart';
import 'package:flutter/material.dart';

class SubMenuCabang extends StatelessWidget {
  static const routeName = '/submenu_cabang';

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
                title: "Tambah Cabang",
                onTap: () {
                  Navigator.of(context).pushNamed(AddCabang.routeName);
                },
              ),
              SizedBox(
                height: bodyHeight * 0.05,
              ),
              ButtonSubMenu(
                title: "Data Cabang",
                onTap: () {
                  Navigator.of(context).pushNamed(ListCabang.routeName);
                },
              ),
              SizedBox(
                height: bodyHeight * 0.05,
              ),
              ButtonSubMenu(
                title: "Recycle Bin",
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
