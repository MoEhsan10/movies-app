import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies/config/theme/app_styles.dart';
import 'package:movies/core/utils/routes_manager.dart';
import 'package:movies/presentation/screens/home/tabs/browse/widget/category_view_widget.dart';

class Browse extends StatefulWidget {
  const Browse({super.key});

  @override
  State<Browse> createState() => _BrowseState();
}

class _BrowseState extends State<Browse> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  REdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Padding(
            padding: REdgeInsets.symmetric(vertical: 30.h, horizontal: 13.w),
            child: Text(
              'Browse Category',
              style: AppStyles.title,
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Two columns
                mainAxisSpacing: 40, // Vertical spacing
                crossAxisSpacing: 20, // Horizontal spacing
                childAspectRatio: 1.5, // Adjust the aspect ratio for each grid item
              ),
              itemCount: 10, // Number of items in the grid
              itemBuilder: (context, index) => InkWell( onTap: () {
                Navigator.pushNamed(context, RoutesManager.browseDetails);
              }, child: const CategoryViewWidget())),
            ),
        ],
      ),
    );
  }
}
