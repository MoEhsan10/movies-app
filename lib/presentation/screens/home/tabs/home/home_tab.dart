import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies/core/utils/assets_manager.dart';
import 'package:movies/core/utils/colors_manager.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              // Large background image
              Image.asset(
                AssetsManager.movie,
                width: double.infinity,
                height: 220.h,
                fit: BoxFit.cover,
              ),
              // Positioned small movie poster
              Positioned(
                top: 90.h,
                left: 16.w,
                child: Container(
                  width: 100.w,
                  height: 150.h,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Image.asset(
                    AssetsManager.smallMovie,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // Play button at the center
              Positioned(
                top: 100.h,
                left: MediaQuery.of(context).size.width / 2 - 30.w,
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.play_arrow,
                    size: 40,
                    color: ColorsManager.black,
                  ),
                ),
              ),
            ],
          ),
          // Movie title and details
          Padding(
            padding: EdgeInsets.all(16.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Dora and the Lost City of Gold',
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 4.h),
                Text(
                  '2019  PG-13  2h 7m',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: ColorsManager.unSelectedColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
