import 'package:eduarsip/providers/BodyHeight.dart';
import 'package:eduarsip/screens/addArsip.dart';
import 'package:eduarsip/screens/addPeminjaman.dart';
import 'package:eduarsip/screens/addPengembalian.dart';
import 'package:eduarsip/screens/subMenuArsip.dart';
import 'package:eduarsip/screens/subMenuBaris.dart';
import 'package:eduarsip/screens/subMenuBox.dart';
import 'package:eduarsip/screens/subMenuCabang.dart';
import 'package:eduarsip/screens/subMenuDivisi.dart';
import 'package:eduarsip/screens/subMenuInstansi.dart';
import 'package:eduarsip/screens/subMenuLaporan.dart';
import 'package:eduarsip/screens/subMenuLokasi.dart';
import 'package:eduarsip/screens/subMenuMap.dart';
import 'package:eduarsip/screens/subMenuPengembalian.dart';
import 'package:eduarsip/screens/subMenuRak.dart';

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
        },
      ),
    );
  }
}
