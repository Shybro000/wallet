import 'package:flutter/material.dart';
import 'package:flutter_application/entrance/appSection.dart';
import 'package:flutter_application/pages/detail.dart';
import 'package:flutter_application/pages/game.dart';
import 'package:flutter_application/pages/gameComponent/gamesDetails.dart';
import 'package:flutter_application/pages/history.dart';
import 'package:flutter_application/pages/home.dart';
import 'package:flutter_application/pages/user.dart';
import 'package:flutter_application/pages/userComponent/cardsManagePage/addCardsPage.dart';
import 'package:flutter_application/pages/userComponent/cardsManagePage/cardsManagePage.dart';
import 'package:flutter_application/pages/userComponent/languagePage.dart';
import 'package:flutter_application/pages/userComponent/messagePage.dart';
import 'package:flutter_application/pages/userComponent/timezonePage.dart';
import 'package:flutter_application/pages/userComponent/userInfoPage.dart';
import 'package:flutter_application/pages/userComponent/walletPage/walletDetails.dart';
import 'package:flutter_application/pages/userComponent/walletPage/walletPage.dart';
import 'package:get/route_manager.dart';
import 'package:go_router/go_router.dart';

final Map<String, Widget> routeMap = {
  '/': const AppSection(),
  '/home': const Home(),
  '/game': const Game(),
  '/game/details': const GamesDetails(),
  '/history': const History(),
  '/user': const User(),
  '/user/message': const MessagePage(),
  '/user/info': const UserInfoPage(),
  '/user/language': const LanguagePage(),
  '/user/timeZone': const TimeZonePage(),
  '/user/cardsManage': const CardsManagePage(),
  '/user/cardsManage/addCard': const addCardsPage(),
  '/user/wallet': const WalletPage(),
  '/user/wallet/details': const WalletDetails(),
};
final List<GetPage> patchRoutes = routeMap.entries
    .map(
      (e) => GetPage(
          name: e.key, page: () => e.value, transition: Transition.cupertino),
    )
    .toList();
final Routes = [...patchRoutes];
