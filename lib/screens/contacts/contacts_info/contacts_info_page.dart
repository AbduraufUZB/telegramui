import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telegramui/core/constants/color_const.dart';
import 'package:telegramui/core/constants/font_const.dart';
import 'package:telegramui/core/constants/pm_const.dart';

class ContactsInfoPage extends StatelessWidget {
  Map map;
  ContactsInfoPage({Key? key, required this.map}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 50.h,
              color: Colors.black.withOpacity(0.07),
              child: Padding(
                padding: PMConst.kMediumPM,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text("Cancel",
                          style: TextStyle(
                              color: ColorConst.kBlueColor,
                              fontSize: FontConst.kMediumFont.sp)),
                    ),
                    Text("Info",
                        style: TextStyle(
                            color: ColorConst.kBlackColor,
                            fontSize: FontConst.kMediumFont.sp)),
                    Text("Done",
                        style: TextStyle(
                            color: ColorConst.kBlueColor,
                            fontSize: FontConst.kMediumFont.sp))
                  ],
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Padding(
              padding: PMConst.kMediumPM,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                          backgroundImage: NetworkImage(map["photo"]),
                          radius: 33.r),
                      SizedBox(width: 19.w),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(map["name"].split(" ")[0]),
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
                            Text(map["name"].split(" ").length > 1
                                ? map["name"].split(" ")[1]
                                : ""),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 19.h),
                  const Text("main"),
                  SizedBox(height: 2.h),
                  Text("+1 202 555 0181",
                      style: TextStyle(
                          color: Colors.greenAccent,
                          fontSize: FontConst.kMediumFont.sp)),
                  SizedBox(height: 2.h),
                  const Divider(),
                  SizedBox(height: 2.h),
                  const Text("home"),
                  SizedBox(height: 2.h),
                  Text("+1 202 444 0181",
                      style: TextStyle(
                          color: ColorConst.kPrimaryColor,
                          fontSize: FontConst.kMediumFont.sp)),
                  SizedBox(height: 2.h),
                  const Divider(),
                  SizedBox(height: 2.h),
                  const Text("bio"),
                  SizedBox(height: 2.h),
                  Text(
                    "Design adds value faster, than it adds cost",
                    style: TextStyle(fontSize: FontConst.kMediumFont.sp),
                  ),
                  SizedBox(height: 2.h),
                  const Divider(),
                  SizedBox(height: 31.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Notifications",
                        style: TextStyle(fontSize: FontConst.kMediumFont.sp),
                      ),
                      Text(
                        "Enabled >",
                        style: TextStyle(
                            fontSize: FontConst.kMediumFont.sp,
                            color: ColorConst.kTextSecondaryColor),
                      )
                    ],
                  ),
                  SizedBox(height: 2.h),
                  const Divider(),
                  SizedBox(height: 31.h),
                  Text(
                    "Delete Contact",
                    style: TextStyle(
                        fontSize: FontConst.kMediumFont.sp,
                        color: ColorConst.kRedColor),
                  ),
                  SizedBox(height: 2.h),
                  const Divider(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
