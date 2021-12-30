import 'package:eduarsip/screens/user/changePasswordUser.dart';
import 'package:eduarsip/screens/user/editProfileUser.dart';

import '../../screens/user/subMenuUser.dart';

import './menuBox.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  Widget _thumbnailPart() {
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 50,
          child: CircleAvatar(
            backgroundImage: Image.asset(
              "assets/images/default_user.png",
              fit: BoxFit.contain,
            ).image,
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Ridar Gustia",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
                Text(
                  "ridargp@gmail.com",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.5),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget get _line => Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      height: 1,
      color: Colors.white.withOpacity(0.2));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _thumbnailPart(),
            SizedBox(height: 20),
            _line,
            // MenuBox(
            //   padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
            //   icon: Icon(
            //     Icons.apartment,
            //     color: Colors.white,
            //   ),
            //   menu: Text(
            //     "Company Profile",
            //     style: TextStyle(
            //       fontSize: 17,
            //       color: Colors.white,
            //     ),
            //   ),
            // ),
            MenuBox(
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
              icon: Icon(
                Icons.supervisor_account,
                color: Colors.white,
              ),
              menu: Text(
                "User Management",
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                ),
              ),
              onTap: () {
                Navigator.of(context).pushNamed(SubMenuUser.routeName);
              },
            ),
            MenuBox(
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
              icon: Icon(
                Icons.dns,
                color: Colors.white,
              ),
              menu: Text(
                "Backup DB",
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                ),
              ),
            ),
            // MenuBox(
            //   padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
            //   icon: Icon(
            //     Icons.watch_later,
            //     color: Colors.white,
            //   ),
            //   menu: Text(
            //     "Log System",
            //     style: TextStyle(
            //       fontSize: 17,
            //       color: Colors.white,
            //     ),
            //   ),
            // ),
            MenuBox(
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
              icon: Icon(
                Icons.edit,
                color: Colors.white,
              ),
              menu: Text(
                "Edit Profile",
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                ),
              ),
              onTap: () {
                Navigator.of(context).pushNamed(EditProfileUser.routeName);
              },
            ),
            MenuBox(
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
              icon: Icon(
                Icons.password,
                color: Colors.white,
              ),
              menu: Text(
                "Change Password",
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                ),
              ),
              onTap: () {
                Navigator.of(context).pushNamed(ChangePasswordUser.routeName);
              },
            ),
            MenuBox(
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
              icon: Icon(
                Icons.logout,
                color: Colors.white,
              ),
              menu: Text(
                "LogOut",
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
