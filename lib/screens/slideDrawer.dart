import './dashboardScreen.dart';
import './homeScreen.dart';
import './profileScreen.dart';
import '../widgets/slideDrawerScreen/customDrawer.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:flutter_slide_drawer/flutter_slide_widget.dart';

class SlideDrawer extends StatefulWidget {
  // const SlideDrawer({ Key? key }) : super(key: key);
  static const routeName = '/slide_drawer';

  @override
  _SlideDrawerState createState() => _SlideDrawerState();
}

class _SlideDrawerState extends State<SlideDrawer> {
  int _currentIndex = 0;
  final GlobalKey<SliderDrawerWidgetState> drawerKey = GlobalKey();

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
      // print(_currentIndex);
    });
    // print(index);
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _container = [
      HomeScreen(),
      DashboardScreen(),
      ProfileScreen(),
    ];
    return SliderDrawerWidget(
      key: drawerKey,
      option: SliderDrawerOption(
        backgroundImage: Image.asset("assets/images/bg_drawer.jpg"),
        backgroundColor: Colors.black,
        sliderEffectType: SliderEffectType.Rounded,
        upDownScaleAmount: 50,
        radiusAmount: 50,
      ),
      drawer: CustomDrawer(),
      body: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: GestureDetector(
            onTap: () {
              drawerKey.currentState!.toggleDrawer();
            },
            child: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
          title: Image.asset(
            "assets/images/logo_transparant_resize.png",
            width: 120,
          ),
          centerTitle: true,
        ),
        body: _container.elementAt(_currentIndex),
        bottomNavigationBar: SalomonBottomBar(
          currentIndex: _currentIndex,
          onTap: (i) => setState(() {
            _currentIndex = i;
            _onItemTapped(_currentIndex);
            // print(_currentIndex);
          }),
          // selectedItemColor: Colors.amber,
          unselectedItemColor: Colors.blue,
          items: [
            /// Home
            SalomonBottomBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
              selectedColor: Colors.blue,
            ),

            /// Likes
            SalomonBottomBarItem(
              icon: Icon(Icons.speed),
              title: Text("Dashboard"),
              selectedColor: Colors.blue,
            ),

            /// Profile
            SalomonBottomBarItem(
              icon: Icon(Icons.person),
              title: Text("Profile"),
              selectedColor: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
