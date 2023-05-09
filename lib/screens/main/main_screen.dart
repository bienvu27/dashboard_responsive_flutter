import 'package:dashborad_flutter_responsive/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../controller/controller.dart';
import '../../core/resources/assets.dart';
import '../dash_board/dashboard_screen.dart';
import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuAppController>().scaffolfKey,
      drawer: const SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if(Responsive.isDesktop(context))
            Expanded(
                //mặc định flex = 1
                //và chiếm 1/6 phần màn hình
                child: SideMenu()),
            Expanded(
                //chiếm 5/6 phần màn hình
                flex: 5,
                child: DashBoardScreen())
          ],
        ),
      ),
    );
  }
}
