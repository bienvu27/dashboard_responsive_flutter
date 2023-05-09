import 'package:dashborad_flutter_responsive/models/my_files.dart';
import 'package:dashborad_flutter_responsive/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import 'file_info_card.dart';

class MyFiels extends StatelessWidget {
  const MyFiels({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "My Files",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            ElevatedButton.icon(
                style: TextButton.styleFrom(
                  padding:  EdgeInsets.symmetric(
                      horizontal: defaultPadding * 1.5,
                      vertical: defaultPadding / (Responsive.isMobile(context) ? 2 : 1),),
                ),
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text('Add New')),
          ],
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        Responsive(
          mobile: FileInfoCardGridView(
            crossAxisCount: _size.width < 650 ? 2 : 4,
            childAspectRatio: _size.width < 650 ? 1.3 : 1,
          ),
          desktop: FileInfoCardGridView(
            childAspectRatio: _size.width < 1400 ? 1.1 : 1.4,
          ),
          tablet: FileInfoCardGridView(),
        )
      ],
    );
  }
}

class FileInfoCardGridView extends StatelessWidget {
  const FileInfoCardGridView({
    super.key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1,
  });

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: demoMyFiles.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: defaultPadding,
            mainAxisSpacing: defaultPadding,
            childAspectRatio: childAspectRatio),
        itemBuilder: (context, index) {
          return FileInfoCard(
            infor: demoMyFiles[index],
          );
        });
  }
}
