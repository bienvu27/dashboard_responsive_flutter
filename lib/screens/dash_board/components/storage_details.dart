import 'package:dashborad_flutter_responsive/screens/dash_board/components/storage_info_card.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../core/resources/assets.dart';
import 'chart.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Storage Details',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Chart(),
          StorageInfoCard(
            svgSrc: documents,
            title: 'Documents Files',
            amountOfFiles: '1.3GB',
            numOfFiles: 1328,
          ),
          StorageInfoCard(
            svgSrc: media,
            title: 'Media Files',
            amountOfFiles: '15.3GB',
            numOfFiles: 1328,
          ),
          StorageInfoCard(
            svgSrc: folder,
            title: 'Other Files',
            amountOfFiles: '1.3GB',
            numOfFiles: 1328,
          ),
          StorageInfoCard(
            svgSrc: unknown,
            title: 'Unkonwn',
            amountOfFiles: '15.3GB',
            numOfFiles: 140,
          ),
        ],
      ),
    );
  }
}
