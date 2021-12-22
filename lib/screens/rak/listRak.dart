import 'package:flutter/material.dart';
import '../../dummyData.dart' as listRak;

class ListRak extends StatelessWidget {
  static const routeName = '/list_rak';
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
                "Data Rak",
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
                itemCount: listRak.listRak.length,
                itemBuilder: (context, index) {
                  // print(listRak.listRak[index].toString());
                  return ExpansionTile(
                    backgroundColor: Colors.grey.shade300,
                    textColor: Colors.black,
                    iconColor: Colors.grey,
                    title: Text(
                      "${listRak.listRak[index]['nama_rak']}",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    // subtitle: Text(
                    //   "${listRak.listRak[index]['tgl_pengembalian']}",
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
                                Text("Nama Rak"),
                                Text(
                                  "${listRak.listRak[index]['nama_rak']}",
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
                                    "${listRak.listRak[index]['cabang']}",
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
                                    "${listRak.listRak[index]['instansi']}",
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
                                    "${listRak.listRak[index]['created_by']}",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.right,
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
