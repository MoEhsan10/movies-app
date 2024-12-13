import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/utils/colors_manager.dart';

class MostLikeList extends StatelessWidget {
   MostLikeList({super.key, required this.imagePath});
  final String imagePath;
  @override
  Widget build(BuildContext context) {

    return Container(
      width: 100.w,
      height: 150.h, // Ensure the height matches the list view's constraints
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.r),
        color: ColorsManager.darkGrey,
      ),
      clipBehavior: Clip.hardEdge,
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
        width: double.infinity, // Ensure the image stretches to fit the width
        height: double.infinity, // Ensure the image stretches to fit the height
      ),
    );
  }
}
