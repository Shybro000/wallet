import 'package:flutter/material.dart';
import 'package:flutter_application/component/gamesCount.dart';
import 'package:flutter_application/component/handiCap.dart';

class BodyListCardContent extends StatefulWidget {
  final int innerKeys;
  BodyListCardContent({super.key, required this.innerKeys});

  @override
  State<BodyListCardContent> createState() =>
      _BodyListCardContentState(innerKeys: this.innerKeys);
}

class _BodyListCardContentState extends State<BodyListCardContent> {
  int innerKeys;
  late int HandiCapCount = 0;
  _BodyListCardContentState({required this.innerKeys});

  @override
  void didUpdateWidget(covariant BodyListCardContent oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.innerKeys != widget.innerKeys) {
      setState(() {
        HandiCapCount = widget.innerKeys;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    const teamStyle = TextStyle(
        fontSize: 12,
        color: Color.fromRGBO(102, 102, 102, 1),
        fontWeight: FontWeight.w400);
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
         
          border: Border(
            bottom:
                BorderSide(color: Color.fromRGBO(233, 233, 233, 1), width: 1.0),
          )),
      child: Column(children: [
        Container(
          width: double.infinity,
          height: 45,
          padding: const EdgeInsets.only(left: 10, right: 10, top: 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'icon/collect.png',
                      width: 20,
                      height: 20,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      '12-8',
                      style: TextStyle(
                          fontSize: 10, color: Color.fromRGBO(51, 51, 51, 1)),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      '03:30',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 10,
                          color: Color.fromRGBO(51, 51, 51, 1)),
                    ),
                  ],
                ),
              ),
              Container(
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'icon/court.png',
                        width: 24,
                        height: 18,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      GamesCount(count: 20)
                    ]),
              )
            ],
          ),
        ),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '埃弗顿',
                      style: teamStyle,
                    ),
                    HandiCap(
                      innerKeys: HandiCapCount,
                      isOnlyOne: false,
                    )
                  ]),
            ),
            Container(
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '纽卡斯尔联',
                      style: teamStyle,
                    ),
                    HandiCap(
                      innerKeys: HandiCapCount,
                      isOnlyOne: false,
                    )
                  ]),
            ),
            Container(
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '2-1',
                      style: teamStyle,
                    ),
                    HandiCap(
                      innerKeys: HandiCapCount,
                      isOnlyOne: true,
                    )
                    // HandiCap(innerKeys: HandiCapCount)
                  ]),
            ),
          ]),
        )
      ]),
    );
  }
}
