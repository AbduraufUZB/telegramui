import 'package:flutter/material.dart';
import 'package:telegramui/core/constants/color_const.dart';
import 'package:telegramui/core/constants/font_const.dart';
import 'package:telegramui/core/constants/pm_const.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TgAuthorizationPage extends StatelessWidget {
  const TgAuthorizationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: PMConst.kSmallPM,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Cancel",
                      style: TextStyle(
                          color: ColorConst.kBlueColor,
                          fontSize: FontConst.kMediumFont.sp)),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, "/tabbar", (route) => false);
                    },
                    child: Text("Next",
                        style: TextStyle(
                            color: ColorConst.kBlueColor,
                            fontSize: FontConst.kMediumFont.sp,
                            fontWeight: FontWeight.bold)),
                  )
                ],
              ),
            ),
            SizedBox(height: 29.h),
            Center(
                child: Text(
              "Your Phone",
              style: TextStyle(
                  color: ColorConst.kBlackColor,
                  fontSize: FontConst.kExtraLargeFont.sp),
            )),
            SizedBox(height: 17.h),
            Text(
                "Please confirm your country code\nand enter your phone number.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: ColorConst.kBlackColor,
                    fontSize: FontConst.kMediumFont.sp)),
            SizedBox(height: 44.5.h),
            Padding(
              padding: EdgeInsets.only(left: 15.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(height: 1.h, color: ColorConst.kBlackColor),
                  Padding(
                    padding: PMConst.kMediumPM,
                    child: Text(
                      "USA",
                      style: TextStyle(fontSize: FontConst.kLargeFont.sp),
                    ),
                  ),
                  Divider(height: 1.h, color: ColorConst.kBlackColor),
                  Row(
                    children: [
                      Padding(
                        padding: PMConst.kMediumPM,
                        child: Text(
                          "+1",
                          style: TextStyle(fontSize: FontConst.kLargeFont.sp),
                        ),
                      ),
                      SizedBox(
                        height: 58.5.h,
                        width: 10.w,
                        child: VerticalDivider(
                            color: ColorConst.kBlackColor, width: 1.w),
                      ),
                      Padding(
                        padding: PMConst.kMediumPM,
                        child: Text("Your phone number",
                            style: TextStyle(
                                fontSize: FontConst.kLargeFont.sp,
                                color: ColorConst.kTextSecondaryColor)),
                      ),
                    ],
                  ),
                  Divider(height: 1.h, color: ColorConst.kBlackColor),
                ],
              ),
            ),
            SizedBox(height: 14.5.h),
            Padding(
              padding: PMConst.kMediumPM,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Sync Contacts",
                    style: TextStyle(fontSize: FontConst.kMediumFont.sp),
                  ),
                  Switch.adaptive(
                    value: true,
                    onChanged: (v) {},
                    activeTrackColor: const Color(0XFF77D572),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
