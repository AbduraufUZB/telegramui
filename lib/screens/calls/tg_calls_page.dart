import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:telegramui/core/constants/color_const.dart';
import 'package:telegramui/core/constants/font_const.dart';
import 'package:telegramui/core/constants/radius_const.dart';
import 'package:telegramui/mock/mock_data.dart';

class TgCallsPage extends StatelessWidget {
  const TgCallsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.black.withOpacity(0.05),
              height: MediaQuery.of(context).size.height * 0.06,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Edit",
                        style: TextStyle(color: ColorConst.kBlueColor)),
                    Container(
                      height: 32.h,
                      width: 162.w,
                      decoration: BoxDecoration(
                          color: ColorConst.kTextSecondaryColor,
                          borderRadius: const BorderRadius.all(
                              RadiusConst.kExtraSmallRadius)),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Row(
                          children: [
                            Expanded(
                                child: Container(
                              decoration: const BoxDecoration(
                                  color: ColorConst.kWhiteColor,
                                  borderRadius: BorderRadius.all(
                                      RadiusConst.kExtraSmallRadius)),
                              child: const Center(
                                child: Text("All"),
                              ),
                            )),
                            const Expanded(
                                child: Center(
                              child: Text("Missed"),
                            )),
                          ],
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.add_ic_call_outlined,
                      color: ColorConst.kBlueColor,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.80,
              width: double.infinity,
              child: ListView.separated(
                itemCount: MockData.mockCalls.length,
                itemBuilder: (ctx, i) {
                  return SizedBox(
                    height: 50.h,
                    width: 375.w,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.phone_callback,
                            color: MockData.mockCalls[i]["tr"] == "1"
                                ? ColorConst.kTextSecondaryColor
                                : Colors.transparent,
                          ),
                        ),
                        CircleAvatar(
                          radius: 20.r,
                          backgroundImage: NetworkImage(
                              "https://source.unsplash.com/random/$i"),
                        ),
                        SizedBox(width: 12.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(MockData.mockCalls[i]["name"],
                                style: TextStyle(
                                    color: MockData.mockCalls[i]["tr2"] == "0"
                                        ? Colors.black
                                        : ColorConst.kRedColor,
                                    fontSize: FontConst.kMediumFont.sp)),
                            Text(MockData.mockCalls[i]["status"],
                                style: TextStyle(
                                    color: ColorConst.kTextSecondaryColor))
                          ],
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(MockData.mockCalls[i]["num"], style: TextStyle(color: ColorConst.kTextSecondaryColor),),
                              SizedBox(width: 9.5.w),
                              const Icon(
                                Icons.info_outline,
                                color: ColorConst.kBlueColor,
                              ),
                              SizedBox(width: 4.w),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (ctx, i) {
                  return SizedBox(
                    height: 1.h,
                    child: const Divider(
                      indent: 50,
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
