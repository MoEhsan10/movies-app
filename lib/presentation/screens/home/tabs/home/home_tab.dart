import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies/core/utils/assets_manager.dart';
import 'package:movies/core/utils/colors_manager.dart';
import 'package:movies/core/utils/routes_manager.dart';
import 'package:movies/presentation/screens/home/tabs/home/widget/book_mark_widget.dart';
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
                onTap: () {
                  Navigator.pushNamed(context, RoutesManager.homeDetails);
                },
                child: Image.asset(
                  AssetsManager.dora,
                  width: double.infinity,
                  height: 220.h,
                  fit: BoxFit.cover,
                ),
              ),
              // Play button in the center
              Positioned(
                top: 90.h,
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
                top: 120.h, // Adjusted to match the provided design
                left: 16.w,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.r),
                  child: Image.asset(
                    AssetsManager.smallDora,
                    width: 100.w, // Adjusted size
                    height: 140.h, // Adjusted size
                    fit: BoxFit.cover,
                  ),
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
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // Movie title
                  Text(
                    'Dora and the Lost City of Gold',
                    style: TextStyle(
                      fontSize: 16.sp,
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
            color: ColorsManager.darkGrey,
            padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
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
                      padding: EdgeInsets.only(right: 12.w),
                      child: const Stack(
                        children: [
                          ListViewWidget(
                            imagePath: AssetsManager.recomended,
                          ),
                          BookMarkWidget(),
                        ],
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
            color: ColorsManager.darkGrey,
            padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
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
                      padding: EdgeInsets.only(right: 12.w),
                      child:const Stack(
                        children: [
                          ListViewWidget(
                            imagePath: AssetsManager.dora,
                          ),
                          BookMarkWidget(),
                        ],
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
