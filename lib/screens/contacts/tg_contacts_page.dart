import 'package:flutter/material.dart';
import 'package:telegramui/core/constants/color_const.dart';
import 'package:telegramui/core/constants/font_const.dart';
import 'package:telegramui/mock/mock_data.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TgContactsPage extends StatelessWidget {
  const TgContactsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0.05),
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.add,
              color: Colors.blueAccent,
            ),
          ),
        ],
        centerTitle: true,
        title: const Text(
          "Contacts",
          style: TextStyle(color: ColorConst.kBlackColor),
        ),
      ),
      body: ListView.separated(
        itemCount: MockData.mockContacts.length,
        separatorBuilder: (ctx, i) {
          return SizedBox(
            height: 1.h,
            child: Divider(
              color: Colors.black.withOpacity(0.5),
              indent: 50,
            ),
          );
        },
        itemBuilder: (ctx, i) {
          if (i == 0 || i == 1) {
            return SizedBox(
              height: 60.h,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(i == 0 ? Icons.pin_drop : Icons.person_add,
                          color: ColorConst.kBlueColor),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "ADD PEOPLE NEARBY",
                          style: TextStyle(
                              color: ColorConst.kBlueColor,
                              fontSize: FontConst.kMediumFont.sp),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          } else {
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, "/contactsinfo", arguments: MockData.mockContacts[i]);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 60.h,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              MockData.mockContacts[i]["photo"]),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            MockData.mockContacts[i]["name"],
                            style: const TextStyle(
                                fontSize: FontConst.kMediumFont,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            MockData.mockContacts[i]["online"],
                            style: TextStyle(
                                color: MockData.mockContacts[i]["online"] ==
                                        "online"
                                    ? ColorConst.kBlueColor
                                    : ColorConst.kBlackColor),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
