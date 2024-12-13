import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies/config/theme/app_styles.dart';
import 'package:movies/core/utils/assets_manager.dart';
import 'package:movies/presentation/screens/home/tabs/watch_list/widget/watchlist_widget.dart';

class WatchList extends StatelessWidget {
  const WatchList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: REdgeInsets.symmetric(vertical: 30.h, horizontal: 13.w),
            child: Text('WatchList',style: AppStyles.title,),
          ),
          SizedBox(height: 10.h,),
          WatchlistWidget(),
          WatchlistWidget(),
          WatchlistWidget(),
          WatchlistWidget(),
          WatchlistWidget(),

        ],
      ),
    );
  }
}
