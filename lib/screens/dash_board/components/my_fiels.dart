import 'package:dashborad_flutter_responsive/models/my_files.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class MyFiels extends StatelessWidget {
  const MyFiels({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
                  padding: const EdgeInsets.symmetric(
                      horizontal: defaultPadding * 1.5,
                      vertical: defaultPadding),
                ),
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text('Add New')),

          ],
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        GridView.builder(
            shrinkWrap: true,
            itemCount: demoMyFiles.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: defaultPadding
            ),
            itemBuilder: (context, index) {
              return FileInfoCard(infor: demoMyFiles[index],);
            })
      ],
    );
  }
}

class FileInfoCard extends StatelessWidget {
  const FileInfoCard({
    super.key, required this.infor,
  });
  final CloudStorageInfo infor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: infor.color?.withOpacity(0.1),
                  borderRadius: const BorderRadius.all(Radius.circular(10))
                ),

              )
            ],
          )
        ],
      ),
    );
  }
}
