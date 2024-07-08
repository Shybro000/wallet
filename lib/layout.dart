import 'package:flutter/material.dart';
import 'package:flutter_application/pages/game.dart';
import 'package:flutter_application/pages/history.dart';
import 'package:flutter_application/pages/home.dart';
import 'package:flutter_application/pages/rollingBall.dart';
import 'package:flutter_application/pages/user.dart';

class BottomTabsWidget extends StatefulWidget {
  const BottomTabsWidget({Key? key}) : super(key: key);

  @override
  State<BottomTabsWidget> createState() => _BottomTabsWidgetState();
}

class _BottomTabsWidgetState extends State<BottomTabsWidget> {
  int _current = 0;

  final List<Widget> _tabsList = [
    const Home(),
    const Game(),
    const RollingBall(),
    const History(),
    const User(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabsList[_current],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: const Color.fromRGBO(25, 116, 254, 1),
        iconSize: 20,
        unselectedFontSize: 10,
        selectedFontSize: 12,
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        onTap: (value) {
          setState(() {
            _current = value;
          });
        },
        currentIndex: _current,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '首页',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.games),
            label: '游戏',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_basketball),
            label: '滚球',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: '记录',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '用户',
          ),
        ],
      ),
    );
  }
}
