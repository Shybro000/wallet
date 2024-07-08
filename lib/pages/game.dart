import 'package:flutter/material.dart';
import 'package:flutter_application/component/commonMoney.dart';
import 'package:flutter_application/pages/gameComponent/gamesList.dart';

class Game extends StatefulWidget {
  const Game({super.key});

  @override
  State<Game> createState() => _MyGamePageState();
}

class _MyGamePageState extends State<Game> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(247,247,247,1),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    const BoxShadow(
                      color: Color.fromRGBO(200, 200, 200, 0.78),
                      blurRadius: 1,
                      offset: Offset(0, 2),
                    )
                  ]),
                  child: Flex(
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
                      Row(
                        mainAxisAlignment:
                            MainAxisAlignment.start, // 主轴对齐方式为均匀分布
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CommonMoney(),
                          Container(
                            width: 30,
                            height: 30,
                            margin: const EdgeInsets.only(left: 8),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            child: Image.asset("icon/logo.png"),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Expanded(
                    child: ListView.builder(
                        itemCount: 3,
                        itemBuilder: (BuildContext context, int index) {
                          return GamesList();
                        }))
              ],
            )),
      ),
    );
  }
}
