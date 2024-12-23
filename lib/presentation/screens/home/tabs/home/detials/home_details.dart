import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies/config/theme/app_styles.dart';
import 'package:movies/core/utils/assets_manager.dart';
import 'package:movies/core/utils/colors_manager.dart';
import 'package:movies/presentation/screens/home/tabs/home/detials/widget/movie_type.dart';
import 'package:movies/presentation/screens/home/tabs/home/widget/book_mark_widget.dart';
import 'package:movies/presentation/screens/home/tabs/home/widget/list_view_widget.dart';

class HomeDetails extends StatelessWidget {
  const HomeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: ColorsManager.white,
        ),
        backgroundColor: ColorsManager.appBar,
        title: Text('Dora and the lost city of gold', style: AppStyles.appBarTitle),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Stack(
                  children: [
                    SizedBox(
                        width: 412.w,
                        height: 217.h,
                        child: Image.asset(AssetsManager.dora)),
                    Positioned(
                      top: 75.h,
                      left: MediaQuery.of(context).size.width / 2 - 30.w,
                      child: const Icon(
                        Icons.play_circle,
                        size: 65,
                        color: ColorsManager.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, // Align items to the start
                children: [
                  Row(
                    children: [
                      Text('Dora and the lost city of gold', style: AppStyles.movieTitle),
                    ],
                  ),
                  Row(
                    children: [
                      Text('2019  PG-13  2h 7m', style: AppStyles.date),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    children: [
                      SizedBox(
                        width: 128.w,
                        height: 199.h,
                        child: Stack(
                          children: [
                            Image.asset(AssetsManager.smallDora),
                            Stack(
                              children: [
                                SizedBox(
                                    width: 27.w,
                                    height: 36.h,
                                    child: Image.asset(AssetsManager.bookmarkIcon)),
                                Positioned(
                                  top: 7.sp,
                                  left: 5.sp,
                                  child: SizedBox(
                                    width: 11.w,
                                    height: 11.h,
                                    child: Image.asset(AssetsManager.addIcon),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      // Align MovieType and description next to the poster
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          const  Row(
                              children:  [
                                MovieType(),
                                MovieType(),
                                MovieType(),
                              ],
                            ),
                            SizedBox(height: 8.h), // Add some space before the description
                            Text(
                              'Having spent most of her life exploring the jungle, nothing could prepare Dora for her most dangerous adventure yet — high school.',
                              style: AppStyles.description?.copyWith(color: ColorsManager.white),
                            ),
                            SizedBox(height: 8.h), // Add some space before the rating
                            Row(
                              children: [
                                SizedBox(
                                    width: 51.w,
                                    height: 27.h,
                                    child: Image.asset(AssetsManager.starIcon)),
                                Text('7.7', style: AppStyles.description?.copyWith(fontSize: 18,color: ColorsManager.white)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 19.h,),
                  Container(
                    width: double.infinity,
                    height: 220.h,
                    color: ColorsManager.darkGrey,
                    padding: EdgeInsets.all(16.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'More Like This',
                          style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
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
                              child:const Stack(
                                children: [
                                  ListViewWidget(
                                    imagePath: AssetsManager.smallDora,
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
            ),
          ],
        ),
      ),
    );
  }
}
