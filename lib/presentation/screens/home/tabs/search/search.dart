import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movies/config/theme/app_styles.dart';
import 'package:movies/core/utils/assets_manager.dart';
import 'package:movies/core/utils/colors_manager.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Container(
          width: 380.w,
          height: 60.h,
          decoration: BoxDecoration(
            border: Border.all(width: 1)
          ),
          child: TextFormField(
            onTap: () {

            },
            style: AppStyles.textForm,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.search, color: ColorsManager.white), // Search icon
              filled: true,
              fillColor: ColorsManager.lightGrey, // Background for the search bar
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40), // Rounded edges
                borderSide: BorderSide.none, // No border
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: ColorsManager.unSelectedColor, width: 1),
                borderRadius: BorderRadius.circular(40),
              ),
              hintText: 'Search',
              hintStyle: AppStyles.hint
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AssetsManager.noMoviesIcon,width: 80.w,height: 90.h,),
            SizedBox(height: 16.h),
            Text(
              'No movies found',
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
