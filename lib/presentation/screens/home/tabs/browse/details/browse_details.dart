import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies/core/utils/colors_manager.dart';
import 'package:movies/presentation/screens/home/tabs/browse/details/widget/browse_details_widget.dart';
import 'package:movies/presentation/screens/home/tabs/watch_list/widget/watchlist_widget.dart';

import '../../../../../../config/theme/app_styles.dart';

class BrowseDetails extends StatelessWidget {
  const BrowseDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: ColorsManager.white,
        ),
        centerTitle: true,
        title: Text('Action',style: AppStyles.appBarTitle,),
        backgroundColor: Colors.black,
      ),

      body: Padding(
        padding: EdgeInsets.all(8.0.r), // Fixed to use EdgeInsets with ScreenUtil
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Updated from stretch to start for alignment
          children: [
            // Padding(
            //   padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 13.w),
            //   child: Text(
            //     'Action',
            //     style: AppStyles.title,
            //   ),
            // ),
            // SizedBox(height: 10.h),
            // Use ListView for better performance with repeated widgets
            Expanded(
              child: ListView.builder(
                itemCount: 5, // Adjust as per your data
                itemBuilder: (context, index) => const WatchlistWidget(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
