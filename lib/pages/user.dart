import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application/component/commonCard.dart';
import 'package:flutter_application/component/commonMoney.dart';
import 'package:get/get.dart';

class User extends StatefulWidget {
  const User({super.key});

  @override
  State<User> createState() => _MyUserPageState();
}

class _MyUserPageState extends State<User> {
  @override
  final List<Map<String, dynamic>> tipsList = [
    {
      'title': 'General',
      'child': [
        {'icon': 'icon/FG.png', 'title': 'Profile', 'tnName': 'info'},
        {'icon': 'icon/FG.png', 'title': 'Transaction Recorsd'},
        {'icon': 'icon/FG.png', 'title': 'My favorites'},
        {'icon': 'icon/FG.png', 'title': 'Cards', 'tnName': 'cardsManage'},
        {'icon': 'icon/FG.png', 'title': 'Address Management'},
        {'icon': 'icon/FG.png', 'title': 'Coupon Center'},
        {'icon': 'icon/FG.png', 'title': 'Promotions'},
        {'icon': 'icon/FG.png', 'title': 'Referral Bonus'},
        {'icon': 'icon/FG.png', 'title': 'Affiliate'},
        {'icon': 'icon/FG.png', 'title': 'Download APP'}
      ]
    },
    {
      'title': 'Sports',
      'child': [
        {'icon': 'icon/FG.png', 'title': 'Event Settings'},
        {'icon': 'icon/FG.png', 'title': 'Results'},
        {'icon': 'icon/FG.png', 'title': 'Game Rules'},
        {'icon': 'icon/FG.png', 'title': 'Tutorial'},
      ]
    },
    {
      'title': 'System',
      'child': [
        {'icon': 'icon/FG.png', 'title': 'Language', 'tnName': 'language'},
        {
          'icon': 'icon/FG.png',
          'title': 'Timezone Settings',
          'tnName': 'timeZone'
        },
      ]
    },
    {
      'title': 'Services',
      'child': [
        {'icon': 'icon/FG.png', 'title': '24/7 Services'},
        {'icon': 'icon/FG.png', 'title': 'Terms & Conditions'},
        {'icon': 'icon/FG.png', 'title': 'About Us'},
      ]
    }
  ];
  Widget build(BuildContext context) {
    const BlurStyles = TextStyle(
        fontSize: 10,
        color: Color.fromRGBO(51, 51, 51, 1),
        fontWeight: FontWeight.w400);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        primary: true,
        title: Center(
          child: const Text(
            'User',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.message,
            color: Colors.white,
          ),
          onPressed: () {
            // 在这里添加左侧按钮的点击事件
            Get.toNamed('/user/message');
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.supervisor_account_rounded,
              color: Colors.white,
            ),
            onPressed: () {
              // 在这里添加右侧按钮的点击事件
            },
          ),
        ],
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Color.fromRGBO(236, 235, 240, 1),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(children: [
            //用户部分
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(top: 55),
              decoration: BoxDecoration(
                  // image: DecorationImage(
                  //     image: AssetImage('icon/user_bg.png'), fit: BoxFit.cover)

                  color: Colors.blue[100]),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                margin: const EdgeInsets.only(right: 8),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1, color: Colors.white),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    image: DecorationImage(
                                        image: AssetImage('icon/FG.png'),
                                        fit: BoxFit.fill)),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Mario Maged',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 6.5,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'Current Level',
                                        style: TextStyle(
                                            fontSize: 10, color: Colors.white),
                                      ),
                                      Container(
                                        width: 30,
                                        height: 16,
                                        margin: const EdgeInsets.only(left: 8),
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 0.5,
                                                color: Colors.white)),
                                        child: Center(
                                            child: Text(
                                          'vip0',
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.white),
                                        )),
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Image.asset(
                                'icon/exchange.png',
                                width: 44,
                                height: 44,
                              ),
                              Text(
                                'Exchange Bouns',
                                style: TextStyle(
                                    fontSize: 10, color: Colors.white),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        child: Container(
                          width: 335,
                          height: 150,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                          ),
                          child: Column(
                            children: [
                              Container(
                                width: double.infinity,
                                height: 60,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(250, 250, 250, 0.6),
                                ),
                                child: Row(
                                  children: [CommonMoney()],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 60,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8)),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(
                                sigmaX: 5.0, sigmaY: 5.0), // 设置模糊程度
                            child: Container(
                              width: 335,
                              height: 90,
                              color: Colors.transparent,
                              child: Container(
                                width: double.infinity,
                                height: 90,
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 14),
                                child: Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                   InkWell(
                                    onTap: () {
                                      Get.toNamed('/user/wallet');
                                    },
                                    child:  Container(
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              'icon/Deposit.png',
                                              width: 40,
                                              height: 40,
                                            ),
                                            SizedBox(
                                              height: 6,
                                            ),
                                            Text(
                                              'Wallet',
                                              style: BlurStyles,
                                            )
                                          ]),
                                    ),
                                   ),
                                    Container(
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              'icon/Deposit.png',
                                              width: 40,
                                              height: 40,
                                            ),
                                            SizedBox(
                                              height: 6,
                                            ),
                                            Text(
                                              'Deposit',
                                              style: BlurStyles,
                                            )
                                          ]),
                                    ),
                                    Container(
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              'icon/Deposit.png',
                                              width: 40,
                                              height: 40,
                                            ),
                                            SizedBox(
                                              height: 6,
                                            ),
                                            Text(
                                              'Withdraw',
                                              style: BlurStyles,
                                            )
                                          ]),
                                    ),
                                    Container(
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              'icon/Deposit.png',
                                              width: 40,
                                              height: 40,
                                            ),
                                            SizedBox(
                                              height: 6,
                                            ),
                                            Text(
                                              'VIP',
                                              style: BlurStyles,
                                            )
                                          ]),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              child:
                  CommonCard(cardWidth: double.infinity, childList: tipsList),
            )
          ]),
        ),
      ),
    );
  }
}
