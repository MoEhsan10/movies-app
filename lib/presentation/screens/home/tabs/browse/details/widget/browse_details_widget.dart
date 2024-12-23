import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../config/theme/app_styles.dart';
import '../../../../../../../core/utils/assets_manager.dart';
import '../../../../../../../core/utils/colors_manager.dart';

class BrowseDetailsWidget extends StatelessWidget {
  const BrowseDetailsWidget ({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
                width: 140.w,
                height: 90.h,
                child: Image.asset(AssetsManager.watchListHistory,)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text('Alita Battle Angel',style: AppStyles.list,),
                  ],
                ),
                Row(
                  children: [
                    Text('2019',style: AppStyles.description,),
                  ],
                ),
                Row(
                  children: [
                    Text('Rosa Salazar, Christoph Waltz',style: AppStyles.description,),
                  ],
                ),
              ],

            ),
          ],
        ),
        SizedBox(height: 13.h,),
        const Divider(
          color: ColorsManager.divider,
          height: 1,
          thickness: 1,
          indent: 20,
          endIndent: 33,
        ),
        SizedBox(height: 13.h,),
      ],
    );
  }
}