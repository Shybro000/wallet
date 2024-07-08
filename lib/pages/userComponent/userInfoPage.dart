import 'dart:math';

import 'package:flutter/material.dart';

class UserInfoPage extends StatefulWidget {
  const UserInfoPage({super.key});
  @override
  State<UserInfoPage> createState() => _UserInfoPageState();
}

class _UserInfoPageState extends State<UserInfoPage> {
  @override
  Widget build(BuildContext context) {
    const titleStyle = TextStyle(
        color: Color.fromRGBO(153, 153, 153, 1),
        fontSize: 12,
        fontWeight: FontWeight.w400);
    const textStyle = TextStyle(
        color: Color.fromRGBO(51, 51, 51, 1),
        fontSize: 14,
        fontWeight: FontWeight.w400);
    return Scaffold(
      backgroundColor: Color.fromRGBO(247,247,247,1),
      appBar: AppBar(
        title: const Text('Profile'),
        primary: true,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: 400,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(8))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 80,
                  margin: const EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              width: 0.5,
                              color: Color.fromRGBO(243, 243, 243, 1)))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Avater'),
                      Container(
                        width: 40,
                        height: 40,
                        margin: const EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('icon/PG.png'),
                                fit: BoxFit.fill),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                      )
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              width: 0.5,
                              color: Color.fromRGBO(243, 243, 243, 1)))),
                  child: InkWell(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Gender',
                          style: titleStyle,
                        ),
                        Container(
                          width: double.infinity,
                          margin: const EdgeInsets.only(top: 8),
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'confidential',
                                style: textStyle,
                              ),
                              Image.asset(
                                'icon/arrow-r.png',
                                width: 12,
                                height: 12,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                width: 0.5,
                                color: Color.fromRGBO(243, 243, 243, 1)))),
                    child: InkWell(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Not Set',
                            style: titleStyle,
                          ),
                          Container(
                            width: double.infinity,
                            margin: const EdgeInsets.only(top: 8),
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'not set',
                                  style: textStyle,
                                ),
                                Image.asset(
                                  'icon/arrow-r.png',
                                  width: 12,
                                  height: 12,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )),
                Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                width: 0.5,
                                color: Color.fromRGBO(243, 243, 243, 1)))),
                    child: InkWell(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Nickname',
                            style: titleStyle,
                          ),
                          Container(
                            width: double.infinity,
                            margin: const EdgeInsets.only(top: 8),
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'xx',
                                  style: textStyle,
                                ),
                                Image.asset(
                                  'icon/arrow-r.png',
                                  width: 12,
                                  height: 12,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )),
                Container(
                    width: double.infinity,
                    child: InkWell(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Birthday',
                            style: titleStyle,
                          ),
                          Container(
                            width: double.infinity,
                            margin: const EdgeInsets.only(top: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'xxx',
                                  style: textStyle,
                                ),
                                Image.asset(
                                  'icon/arrow-r.png',
                                  width: 12,
                                  height: 12,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )),
              ],
            )),
      ),
    );
  }
}
