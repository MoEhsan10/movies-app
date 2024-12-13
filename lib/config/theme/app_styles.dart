import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movies/core/utils/colors_manager.dart';

class AppStyles{

 static  TextStyle? title = GoogleFonts.inter(color: Colors.white,fontSize: 22.sp,fontWeight: FontWeight.w400);
 static  TextStyle? hint = GoogleFonts.inter(fontWeight: FontWeight.w400, fontSize: 14, color: ColorsManager.unSelectedColor,);
 static  TextStyle? date = GoogleFonts.inter(fontWeight: FontWeight.w400, fontSize: 10, color: ColorsManager.unSelectedColor,);
 static  TextStyle? description = GoogleFonts.inter(fontWeight: FontWeight.w400, fontSize: 13, color: ColorsManager.unSelectedColor,);
 static  TextStyle? textForm = GoogleFonts.inter(fontWeight: FontWeight.w400, fontSize: 14, color: ColorsManager.white,);
 static  TextStyle? list = GoogleFonts.inter(fontWeight: FontWeight.w400, fontSize: 15, color: ColorsManager.white,);
 static  TextStyle? appBarTitle = GoogleFonts.inter(fontWeight: FontWeight.w400, fontSize: 20, color: ColorsManager.white,);
 static  TextStyle? movieTitle = GoogleFonts.inter(fontWeight: FontWeight.w400, fontSize: 18, color: ColorsManager.white,);
 static  TextStyle? movieType = GoogleFonts.inter(fontWeight: FontWeight.w400, fontSize: 10, color: ColorsManager.white,);

}