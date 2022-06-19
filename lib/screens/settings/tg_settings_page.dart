import 'package:flutter/material.dart';
import 'package:telegramui/core/constants/color_const.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telegramui/core/constants/font_const.dart';
import 'package:telegramui/core/constants/radius_const.dart';
import 'package:telegramui/widgets/settings_widgets.dart';

class TgSettingsPage extends StatelessWidget {
  const TgSettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black.withOpacity(0.05),
        centerTitle: true,
        title: const Text(
          "Settings",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child: const Text("Edit",
                  style: TextStyle(color: ColorConst.kBlueColor)))
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              height: 36.h,
              width: 355.w,
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.2),
                  borderRadius:
                      const BorderRadius.all(RadiusConst.kExtraSmallRadius)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.search),
                  SizedBox(width: 2.w),
                  const Text("Search")
                ],
              ),
            ),
          ),
          SizedBox(
            height: 92.h,
            width: 375.w,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: const NetworkImage(
                        "https://source.unsplash.com/random/12354"),
                    radius: 33.r,
                  ),
                  SizedBox(width: 13.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Jacob W.",
                          style: TextStyle(fontSize: FontConst.kLargeFont.sp)),
                      Text("+1 202 555 0147",
                          style: TextStyle(
                              fontSize: FontConst.kMediumFont.sp,
                              color: ColorConst.kTextSecondaryColor)),
                      Text("@jacob_d",
                          style: TextStyle(
                              fontSize: FontConst.kMediumFont.sp,
                              color: ColorConst.kTextSecondaryColor)),
                    ],
                  ),
                  SizedBox(width: 100.w),
                  Icon(Icons.chevron_right,
                      color: ColorConst.kTextSecondaryColor)
                ],
              ),
            ),
          ),
          Container(height: 35.h, color: Colors.black.withOpacity(0.1)),
          SizedBox(
            height: 88.h,
            width: 375.w,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 15.w),
                      CircleAvatar(
                          backgroundImage: const NetworkImage(
                              "https://source.unsplash.com/random/21312312"),
                          radius: 14.5.r),
                      SizedBox(width: 16.w),
                      Text(
                        "Jacob Design",
                        style: TextStyle(fontSize: FontConst.kMediumFont.sp),
                      )
                    ],
                  ),
                  SizedBox(height: 5.h),
                  const Divider(indent: 50),
                  SizedBox(height: 5.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 15.w),
                      const Icon(Icons.add, color: ColorConst.kBlueColor),
                      SizedBox(width: 16.w),
                      Text(
                        "Add Account",
                        style: TextStyle(
                            fontSize: FontConst.kMediumFont.sp,
                            color: ColorConst.kBlueColor),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(height: 35.h, color: Colors.black.withOpacity(0.1)),
          SizedBox(
            height: 132.h,
            width: 375.w,
            child: Column(
              children: [
                SettingsWidget(
                    icon: Icons.bookmark,
                    text: "Saved Messages",
                    color: ColorConst.kBlueColor),
                SizedBox(
                  height: 1.h,
                  child: const Divider(indent: 50),
                ),
                SettingsWidget(
                    icon: Icons.call,
                    text: "Recent Calls",
                    color: ColorConst.kGreenColor),
                SizedBox(
                  height: 1.h,
                  child: const Divider(indent: 50),
                ),
                SettingsWidget(
                    icon: Icons.mood,
                    text: "Stickers",
                    color: Colors.orange),
              ],
            ),
          ),
          Container(height: 35.h, color: Colors.black.withOpacity(0.1)),
          SizedBox(
            height: 176.h,
            width: 375.w,
            child: Column(
              children: [
                SettingsWidget(
                    icon: Icons.notifications,
                    text: "Notifications and Sounds",
                    color: ColorConst.kRedColor),
                SizedBox(
                  height: 1.h,
                  child: const Divider(indent: 50),
                ),
                SettingsWidget(
                    icon: Icons.lock,
                    text: "Privacy and Security",
                    color: Colors.grey),
                SizedBox(
                  height: 1.h,
                  child: const Divider(indent: 50),
                ),
                SettingsWidget(
                    icon: Icons.data_usage_outlined,
                    text: "Data and storage",
                    color: Colors.greenAccent),
                SizedBox(
                  height: 1.h,
                  child: const Divider(indent: 50),
                ),
                SettingsWidget(
                    icon: Icons.edit,
                    text: "Appearance",
                    color: const Color(0XFF35AADB)),
                SizedBox(
                  height: 1.h,
                  child: const Divider(indent: 50),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
