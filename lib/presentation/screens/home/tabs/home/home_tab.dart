import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies/core/utils/assets_manager.dart';
import 'package:movies/core/utils/colors_manager.dart';
import 'package:movies/core/utils/routes_manager.dart';
import 'package:movies/presentation/screens/home/tabs/home/widget/list_view_widget.dart';

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
              // Background image
              InkWell(
                onTap:() {
                  Navigator.pushNamed(context, RoutesManager.homeDetails);
                },
                child: Image.asset(
                  AssetsManager.movie,
                  width: double.infinity,
                  height: 220.h,
                  fit: BoxFit.cover,
                ),
              ),
              // Play button in the center
              Positioned(
                top: 100.h,
                left: MediaQuery.of(context).size.width / 2 - 30.w,
                child: const CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.play_arrow,
                    size: 40,
                    color: ColorsManager.black,
                  ),
                ),
              ),
              // Small movie image
              Positioned(
                top: 30.h,
                left: 16.w,
                child: Image.asset(
                  AssetsManager.smallMovie,
                  width: 100.w,
                  height: 150.h,
                ),
              ),
            ],
          ),
          // Text below the image
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
            child: Align(
              alignment: AlignmentDirectional.topEnd,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Movie title
                  Text(
                    'Dora and the Lost City of Gold',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 4.h),
                  // Movie details
                  Text(
                    '2019  PG-13  2h 7m',
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: ColorsManager.unSelectedColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // "New Releases" Section
          Container(
            width: double.infinity,
            height: 220.h,
            color: ColorsManager.darkGrey,
            padding: EdgeInsets.all(16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'New Releases',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 8.h),
                SizedBox(
                  height: 150.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) => Padding(
                      padding: EdgeInsets.only(right: 16.w),
                      child: ListViewWidget(
                        imagePath: AssetsManager.recomended,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.h),
          // "Recommended" Section
          Container(
            width: double.infinity,
            height: 220.h, // Adjust height to prevent overflow
            color: ColorsManager.darkGrey,
            padding: EdgeInsets.all(16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Recommended',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 8.h),
                SizedBox(
                  height: 150.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) => Padding(
                      padding: EdgeInsets.only(right: 16.w),
                      child: ListViewWidget(
                        imagePath: AssetsManager.recomended,
                      ),
                    ),
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
