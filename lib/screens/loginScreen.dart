import 'package:eduarsip/widgets/loginScreen/loginButton.dart';

import '../widgets/loginScreen/textFieldLogin.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  // const LoginScreen({ Key? key }) : super(key: key);
  static const routeName = '/login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;

    final bodyHeight = mediaQueryHeight - MediaQuery.of(context).padding.top;

    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        height: bodyHeight,
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: bodyHeight * 0.15,
                    // color: Colors.green.shade200,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Container(
                          // color: Colors.amber,
                          width: mediaQueryWidth,
                          height: bodyHeight * 0.23,
                          // padding: EdgeInsets.symmetric(horizontal: 30),
                          child: Image.asset(
                            "assets/images/only_logo_eduarsip_transparant.png",
                          ),
                        ),
                      )
                    ],
                  ),
                  // Visibility(
                  //   maintainSize: false,
                  //   maintainAnimation: true,
                  //   maintainState: true,
                  //   visible: visible,
                  //   child: Container(
                  //     child: CircularProgressIndicator(),
                  //   ),
                  // ),
                  SizedBox(
                    height: bodyHeight * 0.1,
                  ),
                  Container(
                    height: bodyHeight * 0.13,
                    // color: Colors.blue.shade200,
                    child: TextFieldLogin(
                      //Text Field Username
                      obscureStatus: false,
                      icon: Icons.person,
                      hintText: "Username",
                    ),
                  ),
                  Container(
                    height: bodyHeight * 0.12,
                    // color: Colors.red.shade200,
                    child: TextFieldLogin(
                      //Text Field Password
                      obscureStatus: true,
                      icon: Icons.lock,
                      hintText: "Password",
                    ),
                  ),
                  // SizedBox(
                  //   height: bodyHeight * 0.01,
                  // ),
                  Container(
                    height: bodyHeight * 0.07,
                    // color: Colors.green.shade200,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // color: Colors.pink.shade200,
                          width: 30,
                          child: Checkbox(
                            // fillColor:
                            // MaterialStateProperty.all(Colors.black),
                            value: isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value!;
                              });
                            },
                            checkColor: Colors.white,
                          ),
                        ),
                        Text(
                          "Show Password",
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: bodyHeight * 0.03,
                  ),
                  InkWell(
                    child: LoginButton(bodyHeight: bodyHeight),
                    // onTap: _cekLogin,
                  ),
                  Container(
                    // color: Colors.amber.shade200,
                    height: mediaQueryHeight * 0.07,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Belum punya akun?"),
                        TextButton(
                          style: ButtonStyle(
                            // backgroundColor: MaterialStateProperty.all(Colors.red.shade100),
                            alignment: Alignment.centerLeft,
                            padding: MaterialStateProperty.all(EdgeInsets.zero),
                          ),
                          onPressed: () {
                            // Navigator.of(context)
                            //     .pushReplacementNamed(RegisterPage.nameRoute);
                          },
                          child: Text(
                            " Daftar",
                            style: TextStyle(color: Colors.blue),
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: SizedBox(),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
