import 'package:flutter/material.dart';
import 'package:flutter_application/store/getX.dart';
import 'package:get/get.dart';

class BodyListCardScore extends StatefulWidget {
  const BodyListCardScore({super.key});
  @override
  State<BodyListCardScore> createState() => _BodyListCardScoreState();
}

class _BodyListCardScoreState extends State<BodyListCardScore> {
  MyReducer reducer = Get.put(MyReducer());

  @override
  Widget build(BuildContext context) {
    const primaryStyle = TextStyle(
        color: Color.fromRGBO(25, 116, 254, 1),
        fontSize: 10,
        height: 1.5,
        fontWeight: FontWeight.w400);
    const defaultStyle = TextStyle(
        color: Color.fromRGBO(102, 102, 102, 1),
        height: 1.5,
        fontSize: 10,
        fontWeight: FontWeight.w400);
    const defaultTipsStyle = TextStyle(
        color: Color.fromRGBO(51, 51, 51, 1),
        fontSize: 14,
        fontWeight: FontWeight.w900);

    const selectTitleStyle = TextStyle(
        color: Color.fromRGBO(255, 255, 255, 1),
        fontSize: 10,
        height: 1.5,
        fontWeight: FontWeight.w400);
    const selectTipsStyle = TextStyle(
        color: Color.fromRGBO(255, 255, 255, 1),
        fontSize: 14,
        fontWeight: FontWeight.w900);

    return GestureDetector(
        onTap: () => {reducer.incrementScoreBet({'id':55}), print(reducer.count)},
        child: Container(
          width: 55,
          height: 48,
          padding: const EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 1),
              boxShadow: [
                BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.15),
                    offset: Offset(0, 2),
                    blurRadius: 4.0)
              ],
              borderRadius: BorderRadius.all(Radius.circular(4))),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '大0.5',
                  style: primaryStyle,
                ),
                Obx(() => Text(
                      '${reducer.count.toString()}',
                      style: defaultTipsStyle,
                    ))
              ]),
        ));
  }
}
