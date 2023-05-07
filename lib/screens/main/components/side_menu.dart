import 'package:flutter/material.dart';

import '../../../core/resources/assets.dart';
import 'drawer_list_tile.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
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
        ),
      ),
    );
  }
}