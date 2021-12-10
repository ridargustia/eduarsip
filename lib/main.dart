import 'package:eduarsip/screens/loginScreen.dart';

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
          primarySwatch: Colors.blue,
          primaryColor: Colors.blue,
          accentColor: Colors.white,
          fontFamily: 'Poppins',
        ),
        home: SplashScreen(),
        routes: {
          LoginScreen.routeName: (context) => LoginScreen(),
        },
      ),
    );
  }
}
