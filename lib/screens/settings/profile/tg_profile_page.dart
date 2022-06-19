import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telegramui/core/constants/color_const.dart';
import 'package:telegramui/core/constants/font_const.dart';
import 'package:telegramui/widgets/profile_widgets.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 56.h,
              width: 375.w,
              color: Colors.black.withOpacity(0.05),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("< Back",
                          style: TextStyle(
                              color: ColorConst.kBlueColor,
                              fontSize: FontConst.kMediumFont.sp)),
                    ),
                    Text("Edit Profile",
                        style: TextStyle(
                            color: ColorConst.kBlackColor,
                            fontSize: FontConst.kMediumFont.sp)),
                    Text("Done",
                        style: TextStyle(
                            color: ColorConst.kBlueColor,
                            fontSize: FontConst.kMediumFont.sp)),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 92.h,
              width: 375.w,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                        backgroundImage: const NetworkImage(
                            "https://source.unsplash.com/random/1232"),
                        radius: 33.r),
                    SizedBox(width: 19.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Jacob W.",
                            style:
                                TextStyle(fontSize: FontConst.kMediumFont.sp),
                          ),
                          SizedBox(
                            height: 8.5.h,
                          ),
                          SizedBox(
                            height: 1.h,
                            width: 260.w,
                            child: Divider(height: 1.h),
                          ),
                          SizedBox(
                            height: 8.5.h,
                          ),
                          Text(
                            "Last Name",
                            style: TextStyle(
                                color: ColorConst.kTextSecondaryColor,
                                fontSize: FontConst.kMediumFont.sp),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.black.withOpacity(0.1),
              height: 47.h,
              width: 375.w,
              child: Center(
                  child: Text(
                      "Enter your name and add an optional profile photo.",
                      style: TextStyle(fontSize: FontConst.kSmallFont.sp))),
            ),
            SizedBox(
              height: 44.h,
              width: 375.w,
              child: Padding(
                padding: const EdgeInsets.all(11.0),
                child: Text("Digital goodies designer - Pixsellz",
                    style: TextStyle(fontSize: FontConst.kMediumFont.sp)),
              ),
            ),
            Container(
              color: Colors.black.withOpacity(0.1),
              height: 63.h,
              width: 375.w,
              child: Center(
                child: Text(
                  "Any details such as age, occupation or city.\nExample: 23 y.o. designer from San Francisco.",
                  style: TextStyle(fontSize: FontConst.kSmallFont.sp),
                ),
              ),
            ),
            SizedBox(
              height: 88.h,
              width: 375.w,
              child: Column(
                children: [
                  ProfileWidgets(
                    text2: "+1 202 555 0147 >",
                    text: "Change Number",
                  ),
                  SizedBox(
                    height: 1.h,
                    child: const Divider(indent: 25),
                  ),
                  ProfileWidgets(
                    text2: "@jacob_designer",
                    text: "Username",
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.black.withOpacity(0.1),
              height: 35.h,
              width: 375.w,
            ),
            SizedBox(
              height: 44.h,
              width: 375.w,
              child: Center(
                child: Text(
                  "Add Account",
                  style: TextStyle(
                      fontSize: FontConst.kMediumFont.sp,
                      color: ColorConst.kBlueColor),
                ),
              ),
            ),
            Container(
              color: Colors.black.withOpacity(0.1),
              height: 35.h,
              width: 375.w,
            ),
            SizedBox(
              height: 44.h,
              width: 375.w,
              child: Center(
                child: Text(
                  "Log Out",
                  style: TextStyle(
                      fontSize: FontConst.kMediumFont.sp,
                      color: ColorConst.kRedColor),
                ),
              ),
            ),
            Expanded(
                child: Container(
              color: Colors.black.withOpacity(0.1),
            ))
          ],
        ),
      ),
    );
  }
}
