import 'package:flutter/material.dart';
import 'package:flutter_application/component/commonMoney.dart';
import 'package:flutter_application/pages/homeComponent/bodyList.dart';
import 'package:flutter_application/pages/homeComponent/headMatch.dart';
import 'package:flutter_application/store/getX.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:go_router/go_router.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Home> with TickerProviderStateMixin {
  MyReducer reducer = Get.put(MyReducer());

  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(247,247,247,1),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          color: Color.fromRGBO(255, 255, 255, 1), width: 0.5),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(16),
                          bottomRight: Radius.circular(16))),
                  child: Column(
                    children: [
                      Flex(
                        direction: Axis.horizontal, // Flex的主轴方向为垂直方向
                        mainAxisAlignment:
                            MainAxisAlignment.spaceBetween, // 主轴对齐方式为均匀分布
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'icon/logo.png',
                            width: 100,
                            height: 44,
                          ),
                          CommonMoney()
                        ],
                      ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(top: 14,bottom: 20),
                        padding: const EdgeInsets.symmetric(horizontal: 14),
                        child: Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment:
                              MainAxisAlignment.start, // 主轴对齐方式为均匀分布
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'icon/football.png',
                              width: 44,
                              height: 44,
                            ),
                            SizedBox(
                              width: 28,
                            ),
                            Image.asset(
                              'icon/basketball.png',
                              width: 44,
                              height: 44,
                            ),
                            SizedBox(
                              width: 28,
                            ),
                            Image.asset(
                              'icon/tennisBall.png',
                              width: 44,
                              height: 44,
                            ),
                            SizedBox(
                              width: 28,
                            ),
                            Image.asset(
                              'icon/gift.png',
                              width: 44,
                              height: 44,
                            ),
                            SizedBox(
                              width: 28,
                            ),
                            Image.asset(
                              'icon/games.png',
                              width: 44,
                              height: 44,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                HeadMatch(
                  params: [],
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 80,
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  margin: const EdgeInsets.only(bottom: 10.0, top: 4.0),
                  child: Column(children: [
                    Container(
                      width: MediaQuery.of(context).size.width - 16,
                      height: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blueAccent,
                        image: const DecorationImage(
                          image: NetworkImage(
                            'https://img0.baidu.com/it/u=2500502997,2094782059&fm=253&fmt=auto&app=138&f=JPEG?w=637&h=380',
                          ),
                          fit: BoxFit.cover,
                          repeat: ImageRepeat.noRepeat,
                        ),
                      ),
                    ),
                  ]),
                ),
                BodyList(),
              ],
            ),
          ),
        ),
        floatingActionButton: Container(
          width: 65,
          height: 65,
          child: Stack(
            alignment: Alignment.center,
            children: [
              FloatingActionButton(
                child: Icon(
                  Icons.shopify_outlined,
                  color: Colors.white,
                ),
                backgroundColor: Color.fromRGBO(25, 116, 254, 1),
                onPressed: () {
                  // return
                  //   showDialog(
                  //     context: context,
                  print('点击动画');
                  //   );
                },
              ),
              Positioned(
                right: 0,
                top: 0,
                child: Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    color: Colors.red[400],
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Center(
                    child: Obx(() => Text(
                          '${reducer.ScoreBetList.length.toString()}',
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        )),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
