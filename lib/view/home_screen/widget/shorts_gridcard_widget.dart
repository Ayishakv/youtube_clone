import 'package:flutter/material.dart';
import 'package:youtube/utils/constants/color_constants.dart';

class ShortsGridCardWidget extends StatelessWidget {
  const ShortsGridCardWidget(
      {super.key,
      required this.image,
      required this.description,
      required this.viewcount});
  final String image;
  final String description;
  final String viewcount;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 300,
          width: 200,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              image,
              fit: BoxFit.fill,
            ),
          ),
          decoration: BoxDecoration(
            color: ColorConstants.lightgrey,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        Positioned(
            bottom: 40,
            left: 8,
            child: Text(
              description,
              style: TextStyle(color: ColorConstants.mainwhite, fontSize: 14),
            )),
        Positioned(
            bottom: 16,
            left: 8,
            child: Text(
              viewcount,
              style: TextStyle(color: ColorConstants.mainwhite, fontSize: 12),
            )),
        Positioned(
            top: 12,
            right: 8,
            child: Icon(
              Icons.more_vert,
              color: ColorConstants.mainwhite,
            ))
      ],
    );
  }
}
