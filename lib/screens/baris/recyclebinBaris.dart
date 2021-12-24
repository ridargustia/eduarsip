import 'package:flutter/material.dart';
import '../../dummyData.dart' as listBaris;

class RecyclebinBaris extends StatelessWidget {
  static const routeName = '/recyclebin_baris';
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
                "Recycle Bin Baris",
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
                itemCount: listBaris.listBaris.length,
                itemBuilder: (context, index) {
                  return ExpansionTile(
                    backgroundColor: Colors.grey.shade300,
                    textColor: Colors.black,
                    iconColor: Colors.grey,
                    title: Text(
                      "${listBaris.listBaris[index]['nama_baris']}",
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
                                Text("Nama Baris"),
                                Text(
                                  "${listBaris.listBaris[index]['nama_baris']}",
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
                                  child: Text("Nama Cabang"),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: Text(
                                    "${listBaris.listBaris[index]['cabang']}",
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
                                  child: Text("Nama Instansi"),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.4,
                                  child: Text(
                                    "${listBaris.listBaris[index]['instansi']}",
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
