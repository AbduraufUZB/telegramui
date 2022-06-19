import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:telegramui/core/constants/color_const.dart';
import 'package:telegramui/screens/calls/tg_calls_page.dart';
import 'package:telegramui/screens/chats/tg_chats_page.dart';
import 'package:telegramui/screens/contacts/tg_contacts_page.dart';
import 'package:telegramui/screens/settings/tg_settings_page.dart';

class TgTabBarPage extends StatefulWidget {
  const TgTabBarPage({Key? key}) : super(key: key);

  @override
  State<TgTabBarPage> createState() => _TgTabBarPageState();
}

class _TgTabBarPageState extends State<TgTabBarPage>
    with TickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        
        controller: _tabController,
        children: const [
          TgContactsPage(),
          TgCallsPage(),
          TgChatsPage(),
          TgSettingsPage()
        ],
      ),
      bottomNavigationBar: myTabBar,
    );
  }

  TabBar get myTabBar => TabBar(
        controller: _tabController,
        labelColor: ColorConst.kPrimaryColor,
        unselectedLabelColor: Colors.grey,
        tabs: const [
          Tab(
            icon: Icon(Icons.account_circle),
            text: "Contacts",
          ),
          Tab(
            icon: Icon(Icons.call),
            text: "Calls",
          ),
          Tab(
            icon: Icon(Icons.forum),
            text: "Chats",
          ),
          Tab(
            icon: CircleAvatar(
              radius: 15,
              backgroundImage:
                  NetworkImage("https://source.unsplash.com/random/1"),
            ),
            text: "Settings",
          ),
        ],
      );
}
