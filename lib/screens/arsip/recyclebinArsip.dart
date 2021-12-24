import 'package:flutter/material.dart';
import '../../dummyData.dart' as listArsip;
import 'package:badges/badges.dart';

class RecyclebinArsip extends StatelessWidget {
  static const routeName = '/recyclebin_arsip';
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
        // color: Colors.blue.shade200,
        decoration: BoxDecoration(
          color: Colors.white,
          // borderRadius: BorderRadius.only(
          //   topLeft: Radius.circular(30),
          //   topRight: Radius.circular(30),
          // ),
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.grey.shade400,
          //     offset: Offset(2, 4),
          //     blurRadius: 5,
          //     spreadRadius: 2,
          //   )
          // ],
        ),
        // margin: EdgeInsets.only(top: 18),
        child: Column(
          children: [
            Container(
              height: bodyHeight * 0.1,
              width: double.infinity,
              alignment: Alignment.center,
              child: Text(
                "Recycle Bin Arsip",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
            Divider(
              color: Colors.grey.shade300,
              thickness: 2,
              height: 5,
            ),
            Expanded(
              child: ListView.separated(
                itemCount: listArsip.listArsip.length,
                itemBuilder: (context, index) {
                  // print(listArsip.listArsip[index].toString());
                  return ExpansionTile(
                    backgroundColor: Colors.grey.shade300,
                    textColor: Colors.black,
                    iconColor: Colors.grey,
                    title: Text(
                      "${index + 1}. ${listArsip.listArsip[index]['nama_arsip']}",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    // subtitle: Text(
                    //   "${listArsip.listArsip[index]['tgl_pengembalian']}",
                    // ),
                    children: [
                      Container(
                        // height: 200,
                        color: Colors.grey.shade200,
                        // alignment: Alignment.centerLeft,
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 20),

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("No Arsip"),
                                Text(
                                  "${listArsip.listArsip[index]['no_arsip']}",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            SizedBox(height: bodyHeight * 0.02),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: Text("Nama Arsip"),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: Text(
                                    "${listArsip.listArsip[index]['nama_arsip']}",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.right,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: bodyHeight * 0.02),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: Text("Divisi"),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: Text(
                                    "${listArsip.listArsip[index]['divisi']}",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.right,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: bodyHeight * 0.02),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: Text("Cabang"),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: Text(
                                    "${listArsip.listArsip[index]['cabang']}",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.right,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: bodyHeight * 0.02),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: Text("Instansi"),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: Text(
                                    "${listArsip.listArsip[index]['instansi']}",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.right,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: bodyHeight * 0.02),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: Text("Status Peminjaman"),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 70),
                                    child: (listArsip.listArsip[index]
                                                ['status_peminjaman'] ==
                                            1)
                                        ? Badge(
                                            toAnimate: false,
                                            badgeColor: Colors.green,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            padding: EdgeInsets.all(3),
                                            // alignment: Alignment.center,
                                            // position:
                                            //     BadgePosition.center(),
                                            shape: BadgeShape.square,
                                            badgeContent: Text(
                                              'Tersedia',
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          )
                                        : Badge(
                                            toAnimate: false,
                                            badgeColor: Colors.red,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            padding: EdgeInsets.all(3),
                                            // alignment: Alignment.center,
                                            // position:
                                            //     BadgePosition.center(),
                                            shape: BadgeShape.square,
                                            badgeContent: Text(
                                              'Dipinjam',
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: bodyHeight * 0.02),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: Text("Status Akses"),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 70),
                                    child: (listArsip.listArsip[index]
                                                ['status_akses'] ==
                                            0)
                                        ? Badge(
                                            toAnimate: false,
                                            badgeColor: Colors.pink,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            padding: EdgeInsets.all(3),
                                            // alignment: Alignment.center,
                                            // position:
                                            //     BadgePosition.center(),
                                            shape: BadgeShape.square,
                                            badgeContent: Text(
                                              'Privat',
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          )
                                        : (listArsip.listArsip[index]
                                                    ['status_akses'] ==
                                                1)
                                            ? Badge(
                                                toAnimate: false,
                                                badgeColor: Colors.black,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                padding: EdgeInsets.all(3),
                                                // alignment: Alignment.center,
                                                // position:
                                                //     BadgePosition.center(),
                                                shape: BadgeShape.square,
                                                badgeContent: Text(
                                                  'Lv. Divisi',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                  textAlign: TextAlign.center,
                                                ),
                                              )
                                            : (listArsip.listArsip[index]
                                                        ['status_akses'] ==
                                                    2)
                                                ? Badge(
                                                    toAnimate: false,
                                                    badgeColor: Colors.black,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    padding: EdgeInsets.all(3),
                                                    // alignment: Alignment.center,
                                                    // position:
                                                    //     BadgePosition.center(),
                                                    shape: BadgeShape.square,
                                                    badgeContent: Text(
                                                      'Lv. Cabang',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                      ),
                                                      textAlign:
                                                          TextAlign.center,
                                                    ),
                                                  )
                                                : (listArsip.listArsip[index]
                                                            ['status_akses'] ==
                                                        3)
                                                    ? Badge(
                                                        toAnimate: false,
                                                        badgeColor:
                                                            Colors.black,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        padding:
                                                            EdgeInsets.all(3),
                                                        // alignment: Alignment.center,
                                                        // position:
                                                        //     BadgePosition.center(),
                                                        shape:
                                                            BadgeShape.square,
                                                        badgeContent: Text(
                                                          'Lv. Instansi',
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                          ),
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                      )
                                                    : Badge(
                                                        toAnimate: false,
                                                        badgeColor:
                                                            Colors.black,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        padding:
                                                            EdgeInsets.all(3),
                                                        // alignment: Alignment.center,
                                                        // position:
                                                        //     BadgePosition.center(),
                                                        shape:
                                                            BadgeShape.square,
                                                        badgeContent: Text(
                                                          'Umum',
                                                          style: TextStyle(
                                                            color: Colors.white,
                                                          ),
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                      ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: bodyHeight * 0.02),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: Text("Status Retensi"),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 70),
                                    child: (listArsip.listArsip[index]
                                                ['status_retensi'] ==
                                            1)
                                        ? Badge(
                                            toAnimate: false,
                                            badgeColor: Colors.lightBlue,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            padding: EdgeInsets.all(3),
                                            // alignment: Alignment.center,
                                            // position:
                                            //     BadgePosition.center(),
                                            shape: BadgeShape.square,
                                            badgeContent: Text(
                                              'Active',
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          )
                                        : Badge(
                                            toAnimate: false,
                                            badgeColor: Colors.blueGrey,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            padding: EdgeInsets.all(3),
                                            // alignment: Alignment.center,
                                            // position:
                                            //     BadgePosition.center(),
                                            shape: BadgeShape.square,
                                            badgeContent: Text(
                                              'Inactive',
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: bodyHeight * 0.02),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: Text("Keterangan"),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: Text(
                                    (listArsip.listArsip[index]['keterangan'] ==
                                            1)
                                        ? "Permanen"
                                        : "Musnah",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.right,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: bodyHeight * 0.02),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: Text("Created At"),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: Text(
                                    "${listArsip.listArsip[index]['created_at']}",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.right,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: bodyHeight * 0.02),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: Text("Created By"),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: Text(
                                    "${listArsip.listArsip[index]['created_by']}",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.right,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: bodyHeight * 0.02),
                            Column(
                              // mainAxisSize: MainAxisSize.max,
                              // mainAxisAlignment:
                              //     MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: bodyHeight * 0.08,
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.blue.shade400),
                                    ),
                                    onPressed: () {},
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(Icons.refresh),
                                        Text("Restore"),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: bodyHeight * 0.02,
                                ),
                                Container(
                                  width: double.infinity,
                                  height: bodyHeight * 0.08,
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(Colors.red),
                                    ),
                                    onPressed: () {},
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(Icons.delete_forever),
                                        Text("Hapus Permanen"),
                                      ],
                                    ),
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
          ],
        ),
      ),
    );
  }
}
