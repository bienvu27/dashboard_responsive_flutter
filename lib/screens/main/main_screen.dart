import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/resources/assets.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
                //mặc định flex = 1
                //và chiếm 1/6 phần màn hình
                child: Column(
              children: [
                DrawerHeader(child: Image.asset(logo)),
                // =======================================
                DrawerListTile(
                  title: "Dashbord",
                  svgSrc: meunu_dashbord,
                  press: () {},
                ),
                DrawerListTile(
                  title: "Transaction",
                  svgSrc: meunu_transaction,
                  press: () {},
                ),
                DrawerListTile(
                  title: "Task",
                  svgSrc: meunu_task,
                  press: () {},
                ),
                DrawerListTile(
                  title: "Documents",
                  svgSrc: meunu_doc,
                  press: () {},
                ),
                DrawerListTile(
                  title: "Store",
                  svgSrc: meunu_store,
                  press: () {},
                ),
                DrawerListTile(
                  title: "Notification",
                  svgSrc: meunu_noti,
                  press: () {},
                ),
                DrawerListTile(
                  title: "Profile",
                  svgSrc: meunu_profile,
                  press: () {},
                ),
                DrawerListTile(
                  title: "Settings",
                  svgSrc: meunu_setting,
                  press: () {},
                ),
                // =======================================
              ],
            )),
            Expanded(
                //chiếm 5/6 phần màn hình
                flex: 5,
                child: Container(
                  color: Colors.blue,
                ))
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    super.key,
    required this.title,
    required this.svgSrc,
    required this.press,
  });

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        color: Colors.white54,
        height: 16,
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white54,
        ),
      ),
    );
  }
}
