import 'package:flutter/material.dart';
import 'package:telegramui/core/components/tg_tabbar_page.dart';
import 'package:telegramui/screens/auth/tg_authorization_page.dart';
import 'package:telegramui/screens/contacts/contacts_info/contacts_info_page.dart';

class UIRoutes {
  static final UIRoutes _instance = UIRoutes._init();
  static UIRoutes get instance => _instance;
  UIRoutes._init();
  Route? onGenerateRoute(RouteSettings s) {
    var args = s.arguments;

    switch (s.name) {
      case "/auth":
        return MaterialPageRoute(builder: (ctx) => const TgAuthorizationPage());
      case "/tabbar":
        return MaterialPageRoute(builder: (ctx) => const TgTabBarPage());
      case "/contactsinfo":
        return MaterialPageRoute(builder: (ctx) => ContactsInfoPage(map: args as Map,));
    }
  }
}
