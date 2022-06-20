import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telegramui/core/constants/color_const.dart';
import 'package:telegramui/core/constants/font_const.dart';
import 'package:telegramui/core/constants/radius_const.dart';
import 'package:telegramui/mock/mock_data.dart';

class TgChatsPage extends StatelessWidget {
  const TgChatsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 56.h,
              width: 375.w,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Edit",
                        style: TextStyle(
                            color: ColorConst.kBlueColor,
                            fontSize: FontConst.kMediumFont.sp)),
                    Text("Chats",
                        style: TextStyle(
                            color: ColorConst.kBlackColor,
                            fontSize: FontConst.kMediumFont.sp)),
                    const Icon(
                      Icons.edit_note_outlined,
                      color: ColorConst.kBlueColor,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Center(
              child: Container(
                height: 36.h,
                width: 355.w,
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.2),
                    borderRadius:
                        const BorderRadius.all(RadiusConst.kSmallRadius)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(Icons.search),
                    SizedBox(width: 2.w),
                    const Text(
                      "Search for messages or users",
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 10.h),
            SizedBox(
              height: 583.5.h,
              width: 375.w,
              child: ListView.separated(
                  itemBuilder: (ctx, i) {
                    return Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SizedBox(
                        height: 76.h,
                        width: 375.w,
                        child: Row(
                          children: [
                            CircleAvatar(
                                radius: 30.r,
                                backgroundImage: NetworkImage(
                                    MockData.mockChats[i]["photo"])),
                            SizedBox(width: 9.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(MockData.mockChats[i]["name"],
                                    style: TextStyle(
                                        fontSize: FontConst.kMediumFont.sp,
                                        fontWeight: FontWeight.w600)),
                                Text(MockData.mockChats[i]["chat"],
                                    style: TextStyle(
                                        fontSize: FontConst.kSmallFont.sp,
                                        color: ColorConst.kTextSecondaryColor)),
                              ],
                            ),
                            Expanded(
                                child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Visibility(
                                    visible:
                                        MockData.mockChats[i]["num"] != "0",
                                    child: Container(
                                      width: 26.w,
                                      height: 20.h,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(RadiusConst.kLargeRadius),
                                          color: MockData.mockChats[i]["not"] ==
                                                  "1"
                                              ? ColorConst.kBlueColor
                                              : ColorConst.kTextSecondaryColor),
                                      child: Center(child: Text(MockData.mockChats[i]["num"], style: TextStyle(color: ColorConst.kWhiteColor),)),
                                    )),
                                Visibility(
                                  visible: MockData.mockChats[i]["pin"] == "1",
                                  child: Icon(Icons.push_pin,
                                      color: ColorConst.kTextSecondaryColor),
                                ),
                              ],
                            ))
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (ctx, i) {
                    return SizedBox(
                      height: 1.h,
                      child: const Divider(indent: 100),
                    );
                  },
                  itemCount: MockData.mockChats.length),
            )
          ],
        ),
      ),
    );
  }
}
