import './screens/map/recyclebinMap.dart';
import './screens/box/recyclebinBox.dart';
import './screens/baris/recyclebinBaris.dart';
import './screens/rak/recyclebinRak.dart';
import './screens/arsip/recyclebinArsip.dart';
import './screens/peminjaman/recyclebinPeminjaman.dart';
import './screens/pengembalian/recyclebinPengembalian.dart';
import './screens/divisi/listDivisi.dart';
import './screens/cabang/listCabang.dart';
import './screens/instansi/listInstansi.dart';
import './screens/lokasi/listLokasi.dart';
import './screens/arsip/listArsip.dart';
import './screens/arsip/listArsipAktif.dart';
import './screens/arsip/listArsipInaktif.dart';
import './screens/baris/listBaris.dart';
import './screens/box/listBox.dart';
import './screens/map/listMap.dart';
import './screens/peminjaman/listPeminjaman.dart';
import './screens/pengembalian/listPengembalian.dart';
import './screens/rak/listRak.dart';

import './screens/divisi/addDivisi.dart';
import './screens/cabang/addCabang.dart';
import './screens/instansi/addInstansi.dart';
import './screens/lokasi/addLokasi.dart';
import './screens/map/addMap.dart';
import './screens/box/addBox.dart';
import './screens/baris/addBaris.dart';
import './screens/arsip/addArsip.dart';
import './screens/peminjaman/addPeminjaman.dart';
import './screens/pengembalian/addPengembalian.dart';
import './screens/rak/addRak.dart';
import './screens/arsip/subMenuArsip.dart';
import './screens/baris/subMenuBaris.dart';
import './screens/box/subMenuBox.dart';
import './screens/cabang/subMenuCabang.dart';
import './screens/divisi/subMenuDivisi.dart';
import './screens/instansi/subMenuInstansi.dart';
import './screens/laporan/subMenuLaporan.dart';
import './screens/lokasi/subMenuLokasi.dart';
import './screens/map/subMenuMap.dart';
import './screens/pengembalian/subMenuPengembalian.dart';
import './screens/rak/subMenuRak.dart';
import './screens/peminjaman/subMenuPeminjaman.dart';

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
          AddMap.routeName: (context) => AddMap(),
          AddLokasi.routeName: (context) => AddLokasi(),
          AddInstansi.routeName: (context) => AddInstansi(),
          AddCabang.routeName: (context) => AddCabang(),
          AddDivisi.routeName: (context) => AddDivisi(),
          ListPeminjaman.routeName: (context) => ListPeminjaman(),
          ListPengembalian.routeName: (context) => ListPengembalian(),
          ListArsip.routeName: (context) => ListArsip(),
          ListArsipAktif.routeName: (context) => ListArsipAktif(),
          ListArsipInaktif.routeName: (context) => ListArsipInaktif(),
          ListRak.routeName: (context) => ListRak(),
          ListBaris.routeName: (context) => ListBaris(),
          ListBox.routeName: (context) => ListBox(),
          ListMap.routeName: (context) => ListMap(),
          ListLokasi.routeName: (context) => ListLokasi(),
          ListInstansi.routeName: (context) => ListInstansi(),
          ListCabang.routeName: (context) => ListCabang(),
          ListDivisi.routeName: (context) => ListDivisi(),
          RecyclebinPeminjaman.routeName: (context) => RecyclebinPeminjaman(),
          RecyclebinPengembalian.routeName: (context) =>
              RecyclebinPengembalian(),
          RecyclebinArsip.routeName: (context) => RecyclebinArsip(),
          RecyclebinRak.routeName: (context) => RecyclebinRak(),
          RecyclebinBaris.routeName: (context) => RecyclebinBaris(),
          RecyclebinBox.routeName: (context) => RecyclebinBox(),
          RecyclebinMap.routeName: (context) => RecyclebinMap(),
        },
      ),
    );
  }
}
