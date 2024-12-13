import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies/core/utils/colors_manager.dart';

import '../../../../../../../config/theme/app_styles.dart';

class MovieType extends StatelessWidget {
  const MovieType({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        width: 65.w,
        height: 25.h,
        decoration:  BoxDecoration(
          color: Colors.transparent,
          border: Border.all(width: 2.w,color: ColorsManager.movieType),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Text('Action',style: AppStyles.movieType,textAlign: TextAlign.center,),
      ),
    );
  }
}
