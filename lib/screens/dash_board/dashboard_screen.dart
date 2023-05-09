import 'package:dashborad_flutter_responsive/constants.dart';
import 'package:dashborad_flutter_responsive/responsive.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../core/resources/assets.dart';
import '../../models/recent_file.dart';
import 'components/chart.dart';
import 'components/header.dart';
import 'components/my_fiels.dart';
import 'components/recent_files.dart';
import 'components/storage_details.dart';
import 'components/storage_info_card.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(
            children: [
              const Header(),
              const SizedBox(
                height: defaultPadding,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 5,
                    child: Column(
                      children: [
                        MyFiels(),
                        SizedBox(
                          height: defaultPadding,
                        ),
                        RecentFiles(),
                        if(Responsive.isMobile(context))
                          SizedBox(height: defaultPadding,),
                        if(Responsive.isMobile(context))
                          StorageDetails(),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: defaultPadding,
                  ),
                  // on mobile means if the screen is less than 850
                  if(!Responsive.isMobile(context))
                  Expanded(
                    flex: 2,
                    child: StorageDetails(),
                  ),
                ],
              )
            ],
          )),
    );
  }
}

