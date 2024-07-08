import 'package:flutter/material.dart';
import 'package:flutter_application/component/gamesCount.dart';
import 'package:flutter_application/pages/homeComponent/headMatchBetting.dart';

// class HeadMatch extends StatefulWidget {

//   @override
//   State<HeadMatch> createState() => _HeadMatch();
// }

class HeadMatch extends StatelessWidget {
  final Object params;
  const HeadMatch({super.key, required this.params});

  @override
  Widget build(BuildContext context) {
    const textStyle =
        TextStyle(color: Color.fromRGBO(51, 51, 51, 1), fontSize: 12.0);

    return Container(
        width: MediaQuery.of(context).size.width,
        height: 140,
        decoration: BoxDecoration(
          color: Color.fromRGBO(247,247,247,1),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                  width: 280,
                  height: 130,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    
                    border: Border.all(
                        color: Color.fromRGBO(255, 255, 255, 1), width: 1),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  padding: const EdgeInsets.all(8.0),
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    children: [
                      Container(
                        width: 280,
                        margin: const EdgeInsets.only(bottom: 4),
                        child: Row(
                          mainAxisAlignment:
                              MainAxisAlignment.spaceBetween, // 主轴对齐方式为均匀分布
                          crossAxisAlignment:
                              CrossAxisAlignment.center, // 交叉轴对齐
                          children: <Widget>[
                            Text('12-9 23:00',
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Color.fromRGBO(25, 116, 254, 1))),
                            Text('英格兰足球超级联赛',
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Color.fromRGBO(51, 51, 51, 1))),
                            SizedBox(width: 20),
                            Container(
                              // 第二个Row的背景色
                              width: 33,
                              height: 18,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(25, 116, 254, 1),
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              child: GamesCount(count: 20),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 280,
                        margin: const EdgeInsets.only(bottom: 10.0),
                        padding: const EdgeInsets.symmetric(horizontal: 40.0),
                        child: const Flex(
                          direction: Axis.horizontal, // Flex的主轴方向为垂直方向
                          mainAxisAlignment:
                              MainAxisAlignment.spaceBetween, // 主轴对齐方式为均匀分布
                          crossAxisAlignment:
                              CrossAxisAlignment.center, // 交叉轴对齐
                          children: [
                            Row(
                              children: <Widget>[Text('A队')],
                            ),
                            Column(
                              children: <Widget>[
                                Text(
                                  'VS',
                                  style: TextStyle(
                                      color: Color.fromRGBO(51, 51, 51, 1),
                                      fontSize: 20.0),
                                ),
                                Text(
                                  'HDP',
                                  style: TextStyle(
                                      fontSize: 10.0,
                                      color: Color.fromRGBO(102, 102, 102, 1)),
                                )
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  'B队',
                                  style: textStyle,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          HeadMatchBetting(params: {}),
                          HeadMatchBetting(params: {}),
                        ],
                      )
                    ],
                  )),
            ],
          ),
        ));
  }
}
