import './arsip/subMenuArsip.dart';
import './baris/subMenuBaris.dart';
import './box/subMenuBox.dart';
import './cabang/subMenuCabang.dart';
import './divisi/subMenuDivisi.dart';
import './instansi/subMenuInstansi.dart';
import './laporan/subMenuLaporan.dart';
import './lokasi/subMenuLokasi.dart';
import './map/subMenuMap.dart';
import './rak/subMenuRak.dart';
import './pengembalian/subMenuPengembalian.dart';
import './peminjaman/subMenuPeminjaman.dart';

import '../widgets/dashboardScreen/thumbMenu.dart';

import '../providers/BodyHeight.dart';
import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:provider/provider.dart';
import '../dummyData.dart' as dummy;
import './overviewCounterData.dart' as counterData;

class DashboardScreen extends StatelessWidget {
  // const DashboardScreen({ Key? key }) : super(key: key);
  // final double bodyHeight;
  // DashboardScreen(this.bodyHeight);

  @override
  Widget build(BuildContext context) {
    final bodyHeight = Provider.of<BodyHeight>(context, listen: false);

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        // height: bodyHeight.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.grey.shade200,
        child: Column(
          children: [
            Container(
              height: bodyHeight.height! * 0.13,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey.shade200,
              padding: EdgeInsets.only(top: 20),
              child: Center(
                child: Column(
                  children: [
                    Text(
                      "Selamat Datang Arsiparis Muda !",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Salam EduArsip",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        // fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: bodyHeight.height! * 0.34,
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return Image.network(
                    dummy.images[index],
                    fit: BoxFit.cover,
                    // height: 200,
                  );
                },
                indicatorLayout: PageIndicatorLayout.COLOR,
                autoplay: true,
                itemCount: dummy.images.length,
                pagination: SwiperPagination(),
                autoplayDelay: 10000,
                // control: SwiperControl(),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              // decoration:
              //     BoxDecoration(borderRadius: BorderRadius.circular(20)),
              height: bodyHeight.height! * 0.272,
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  // return Image.network(
                  //   images[index],
                  //   fit: BoxFit.cover,
                  //   height: 200,
                  // );

                  return counterData.counter[index];
                },
                indicatorLayout: PageIndicatorLayout.COLOR,
                // autoplay: true,
                itemCount: counterData.counter.length,
                // pagination: SwiperPagination(),
                control: SwiperControl(
                  size: 20,
                  color: Colors.grey.shade100,
                ),
              ),
            ),
            Container(
              height: bodyHeight.height! * 0.5,
              width: MediaQuery.of(context).size.width,
              // color: Colors.grey,
              child: GridView.count(
                scrollDirection: Axis.vertical,
                primary: false,
                padding: EdgeInsets.symmetric(
                  horizontal: 25,
                  // vertical: 5,
                ),
                crossAxisSpacing: 20,
                mainAxisSpacing: 10,
                childAspectRatio: 1 / 1.25,
                crossAxisCount: 4,
                children: [
                  ThumbMenu(
                    title: "Peminjaman",
                    icon: Icons.feed,
                    onTap: () => Navigator.of(context)
                        .pushNamed(SubMenuPeminjaman.routeName),
                  ),
                  ThumbMenu(
                    title: "Pengembalian",
                    icon: Icons.feed,
                    onTap: () => Navigator.of(context)
                        .pushNamed(SubMenuPengembalian.routeName),
                  ),
                  ThumbMenu(
                    title: "Arsip",
                    icon: Icons.inventory,
                    onTap: () =>
                        Navigator.of(context).pushNamed(SubMenuArsip.routeName),
                  ),
                  ThumbMenu(
                    title: "Rak",
                    icon: Icons.corporate_fare,
                    onTap: () =>
                        Navigator.of(context).pushNamed(SubMenuRak.routeName),
                  ),
                  ThumbMenu(
                    title: "Baris",
                    icon: Icons.dns,
                    onTap: () =>
                        Navigator.of(context).pushNamed(SubMenuBaris.routeName),
                  ),
                  ThumbMenu(
                    title: "Box",
                    icon: Icons.inbox,
                    onTap: () =>
                        Navigator.of(context).pushNamed(SubMenuBox.routeName),
                  ),
                  ThumbMenu(
                    title: "Map",
                    icon: Icons.drafts,
                    onTap: () =>
                        Navigator.of(context).pushNamed(SubMenuMap.routeName),
                  ),
                  ThumbMenu(
                    title: "Laporan",
                    icon: Icons.assignment,
                    onTap: () => Navigator.of(context)
                        .pushNamed(SubMenuLaporan.routeName),
                  ),
                  ThumbMenu(
                    title: "Lokasi Arsip",
                    icon: Icons.fmd_good,
                    onTap: () => Navigator.of(context)
                        .pushNamed(SubMenuLokasi.routeName),
                  ),
                  ThumbMenu(
                    title: "Instansi",
                    icon: Icons.business,
                    onTap: () => Navigator.of(context)
                        .pushNamed(SubMenuInstansi.routeName),
                  ),
                  ThumbMenu(
                    title: "Cabang",
                    icon: Icons.business,
                    onTap: () => Navigator.of(context)
                        .pushNamed(SubMenuCabang.routeName),
                  ),
                  ThumbMenu(
                    title: "Divisi",
                    icon: Icons.business,
                    onTap: () => Navigator.of(context)
                        .pushNamed(SubMenuDivisi.routeName),
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
