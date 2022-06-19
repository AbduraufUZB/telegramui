import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/widgets.dart';
import 'package:telegramui/core/constants/color_const.dart';
import 'package:telegramui/core/constants/font_const.dart';

class SettingsWidget extends StatelessWidget {
  IconData icon;
  String text;
  Color color;
  SettingsWidget(
      {Key? key, required this.icon, required this.text, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42.h,
      width: 375.w,
      child: Row(
        children: [
          SizedBox(width: 15.w),
          Icon(icon, color: color),
          SizedBox(width: 16.w),
          Text(text, style: TextStyle(fontSize: FontConst.kMediumFont.sp)),
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Icons.chevron_right, color: ColorConst.kTextSecondaryColor,)
            ],
          ))
        ],
      ),
    );
  }
}
