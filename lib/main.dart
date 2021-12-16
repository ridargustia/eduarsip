import './screens/addBox.dart';
import './screens/addBaris.dart';
import './screens/addArsip.dart';
import './screens/addPeminjaman.dart';
import './screens/addPengembalian.dart';
import './screens/addRak.dart';
import './screens/subMenuArsip.dart';
import './screens/subMenuBaris.dart';
import './screens/subMenuBox.dart';
import './screens/subMenuCabang.dart';
import './screens/subMenuDivisi.dart';
import './screens/subMenuInstansi.dart';
import './screens/subMenuLaporan.dart';
import './screens/subMenuLokasi.dart';
import './screens/subMenuMap.dart';
import './screens/subMenuPengembalian.dart';
import './screens/subMenuRak.dart';

import './screens/subMenuPeminjaman.dart';

import './screens/loginScreen.dart';
import './screens/slideDrawer.dart';

import './providers/User.dart';
import './screens/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => User()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'EduArsip',
        theme: ThemeData(
          // primarySwatch: Colors.blue,
          primaryColor: Colors.blue,
          accentColor: Colors.white,
          fontFamily: 'Poppins',
          iconTheme: IconThemeData(color: Colors.black),
        ),
        home: SplashScreen(),
        routes: {
          LoginScreen.routeName: (context) => LoginScreen(),
          SlideDrawer.routeName: (context) => SlideDrawer(),
          SubMenuPeminjaman.routeName: (context) => SubMenuPeminjaman(),
          SubMenuPengembalian.routeName: (context) => SubMenuPengembalian(),
          SubMenuArsip.routeName: (context) => SubMenuArsip(),
          SubMenuRak.routeName: (context) => SubMenuRak(),
          SubMenuBaris.routeName: (context) => SubMenuBaris(),
          SubMenuBox.routeName: (context) => SubMenuBox(),
          SubMenuMap.routeName: (context) => SubMenuMap(),
          SubMenuLaporan.routeName: (context) => SubMenuLaporan(),
          SubMenuLokasi.routeName: (context) => SubMenuLokasi(),
          SubMenuInstansi.routeName: (context) => SubMenuInstansi(),
          SubMenuCabang.routeName: (context) => SubMenuCabang(),
          SubMenuDivisi.routeName: (context) => SubMenuDivisi(),
          AddPeminjaman.routeName: (context) => AddPeminjaman(),
          AddPengembalian.routeName: (context) => AddPengembalian(),
          AddArsip.routeName: (context) => AddArsip(),
          AddRak.routeName: (context) => AddRak(),
          AddBaris.routeName: (context) => AddBaris(),
          AddBox.routeName: (context) => AddBox(),
        },
      ),
    );
  }
}
