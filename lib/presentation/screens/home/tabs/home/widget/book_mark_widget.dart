import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/assets_manager.dart';

class BookMarkWidget extends StatelessWidget {
  const BookMarkWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: 27.w,
          height: 36.h,
          child: Image.asset(AssetsManager.bookmarkIcon),
        ),
        SizedBox(
          width: 11.w,
          height: 11.h,
          child: Image.asset(AssetsManager.addIcon),
        ),
      ],
    );
  }
}
