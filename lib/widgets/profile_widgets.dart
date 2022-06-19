import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telegramui/core/constants/color_const.dart';
import 'package:telegramui/core/constants/font_const.dart';

class ProfileWidgets extends StatelessWidget {
  String text, text2;
  ProfileWidgets({Key? key, required this.text, required this.text2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 43.h,
      width: 375.w,
      child: Padding(
        padding: const EdgeInsets.all(11.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(fontSize: FontConst.kMediumFont.sp),
            ),
            Text(
              text2,
              style: TextStyle(
                  color: ColorConst.kTextSecondaryColor,
                  fontSize: FontConst.kMediumFont.sp),
            ),
          ],
        ),
      ),
    );
  }
}
