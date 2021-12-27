import 'package:flutter/material.dart';
import '../../dummyData.dart' as listInstansi;
import 'package:badges/badges.dart';

class RecyclebinInstansi extends StatelessWidget {
  static const routeName = '/recyclebin_instansi';
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
                "Recycle Bin Instansi",
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
