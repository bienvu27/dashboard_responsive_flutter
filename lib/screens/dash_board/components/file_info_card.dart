import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../models/my_files.dart';

class FileInfoCard extends StatelessWidget {
  const FileInfoCard({
    super.key,
    required this.infor,
  });

  final CloudStorageInfo infor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(defaultPadding * 0.75),
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    color: infor.color?.withOpacity(0.1),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    )),
                child: SvgPicture.asset(
                  infor.svgSrc ?? '',
                  color: infor.color,
                ),
              ),
              const Icon(
                Icons.more_vert,
                color: Colors.white54,
              ),
            ],
          ),
          Text(
            infor.title ?? '',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          ProgressLine(
            color: infor.color,
            percentage: infor.percentage ?? 0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${infor.numOfFiles} Files',
                style: Theme.of(context).textTheme.caption?.copyWith(
                  color: Colors.white70,
                ),
              ),
              Text(
                '${infor.totalStorage}',
                style: Theme.of(context).textTheme.caption?.copyWith(
                  color: Colors.white,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ProgressLine extends StatelessWidget {
  const ProgressLine({
    super.key,
    required this.color,
    required this.percentage,
  });

  final Color? color;
  final int percentage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 5,
          decoration: BoxDecoration(
              color: color?.withOpacity(0.1),
              borderRadius: const BorderRadius.all(Radius.circular(10))),
        ),
        LayoutBuilder(builder: (context, constrains) {
          return Container(
            width: constrains.maxWidth * (percentage / 100),
            height: 5,
            decoration: BoxDecoration(
                color: color,
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                )),
          );
        })
      ],
    );
  }
}