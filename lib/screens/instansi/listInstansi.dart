import '../../widgets/searchInList/searchForm.dart';
import 'package:flutter/material.dart';
import '../../dummyData.dart' as listInstansi;
import 'package:badges/badges.dart';

class ListInstansi extends StatelessWidget {
  static const routeName = '/list_instansi';
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
        ),
        // margin: EdgeInsets.only(top: 18),
        child: Column(
          children: [
            Container(
              height: bodyHeight * 0.1,
              width: double.infinity,
              alignment: Alignment.center,
              child: Text(
                "Data Instansi",
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
              hintText: "Cari Instansi",
            ),
            Divider(
              color: Colors.grey.shade300,
              thickness: 2,
              height: 5,
            ),
            Expanded(
              child: ListView.separated(
                itemCount: listInstansi.listInstansi.length,
                itemBuilder: (context, index) {
                  return ExpansionTile(
                    backgroundColor: Colors.grey.shade300,
                    textColor: Colors.black,
                    iconColor: Colors.grey,
                    leading: CircleAvatar(
                      // backgroundColor: Colors.grey.shade400,
                      backgroundImage: AssetImage('assets/images/noimage.jpg'),
                    ),
                    title: Text(
                      "${listInstansi.listInstansi[index]['nama_instansi']}",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
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
                                Text("Nama Instansi"),
                                Text(
                                  "${listInstansi.listInstansi[index]['nama_instansi']}",
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
                                  child: Text("Alamat"),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: Text(
                                    "${listInstansi.listInstansi[index]['alamat']}",
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
                                  child: Text("No Telpon"),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: Text(
                                    "${listInstansi.listInstansi[index]['no_telpon']}",
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
                                  child: Text("Aktif sampai"),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: Text(
                                    "${listInstansi.listInstansi[index]['masa_aktif']}",
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
                                  child: Text("Status"),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: Padding(
                                    padding: EdgeInsets.only(left: 70),
                                    child: (listInstansi.listInstansi[index]
                                                ['is_active'] ==
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
                                              'ACTIVE',
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
                                              'INACTIVE',
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
                              // mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.45,
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.orange),
                                    ),
                                    onPressed: () {},
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(Icons.edit),
                                        Text("Edit"),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.45,
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
                                        Icon(Icons.delete),
                                        Text("Hapus"),
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
