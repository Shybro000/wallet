import 'package:flutter/material.dart';
import 'package:flutter_application/pages/homeComponent/bodyListCardContent.dart';
import 'package:flutter_sequence_animation/flutter_sequence_animation.dart';

class BodyListCard extends StatefulWidget {
  final int innerKeys;
  final valueFromParent;
  // const BodyListCard({super.key, required this.innerKeys});
  const BodyListCard({Key? key, this.valueFromParent, required this.innerKeys})
      : super(key: key);
  @override
  State<BodyListCard> createState() =>
      _BodyListCardState(innerKeys: this.innerKeys);
}

class _BodyListCardState extends State<BodyListCard>
    with TickerProviderStateMixin {
  TabController? _tabController;
  late SequenceAnimation _sequenceAnimation;
  late AnimationController _sequenceAnimationController;

  late bool bodyHeadKey = true;
  late bool isFirst = true;
  int innerKeys = 0;
  late int handiCapCount = 0;
  _BodyListCardState({required this.innerKeys});

  @override
  void initState() {
    super.initState();
    innerKeys = widget.valueFromParent ?? 0;
    _tabController = TabController(length: 2, vsync: this);

    _sequenceAnimationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );

    _sequenceAnimation = SequenceAnimationBuilder()
        .addAnimatable(
          animatable: Tween<double>(begin: 250, end: 0),
          from: Duration.zero,
          to: Duration(milliseconds: 300),
          tag: "height",
          curve: Curves.easeIn,
        )
        .animate(_sequenceAnimationController);
  }

  @override
  void didUpdateWidget(covariant BodyListCard oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.innerKeys != widget.innerKeys) {
      _tabController?.animateTo(widget.innerKeys);
      setState(() {
        handiCapCount = widget.innerKeys;
      });
    }
  }

  void handleBodyHeadClose({required bool params}) {
    setState(() {
      bodyHeadKey = params;

      if (isFirst == false) {
        print(params);
        _sequenceAnimation = SequenceAnimationBuilder()
            .addAnimatable(
              animatable:
                  Tween<double>(begin: params ? 0 : 250, end: params ? 250 : 0),
              from: Duration.zero,
              to: Duration(milliseconds: 300),
              tag: "height",
              curve: Curves.easeIn,
            )
            .animate(_sequenceAnimationController);
      }
      _sequenceAnimationController.forward(from: 0);
      if (isFirst) {
        isFirst = false;
      }
      print(isFirst);
    });
  }

  @override
  Widget build(BuildContext context) {
    const headTextStyle = TextStyle(
        color: Color.fromRGBO(102, 102, 102, 1),
        fontSize: 10,
        fontWeight: FontWeight.w400);

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          Container(
            height: 40,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
                border: Border.all(
                  color: Color.fromRGBO(249, 249, 249, 1),
                  width: .5,
                ),
                boxShadow: [
                  const BoxShadow(
                    color: Color.fromRGBO(200, 200, 200, 0.78),
                    blurRadius: 1,
                    offset: Offset(0, 2),
                  )
                ]),
            child: GestureDetector(
              onTap: () => handleBodyHeadClose(params: !bodyHeadKey),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '英格兰足球超级联赛',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromRGBO(
                          51,
                          51,
                          51,
                          1,
                        ),
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: _tabController,
                      physics: new NeverScrollableScrollPhysics(),
                      children: [
                        Center(
                          child: Container(
                            width: 180,
                            height: 50,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 48,
                                  child: Center(
                                      child: Text(
                                    '让球',
                                    style: headTextStyle,
                                  )),
                                ),
                                SizedBox(
                                  width: 16,
                                ),
                                Container(
                                  width: 48,
                                  child: Center(
                                      child: Text(
                                    '大小',
                                    style: headTextStyle,
                                  )),
                                ),
                                SizedBox(
                                  width: 16,
                                ),
                                Container(
                                  width: 48,
                                  child: Center(
                                      child: Text(
                                    '胜负',
                                    style: headTextStyle,
                                  )),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Center(
                          child: Container(
                            width: 180,
                            child: Row(
                              children: [
                                Container(
                                  width: 48,
                                  child: Center(
                                      child: Text(
                                    '半场让球',
                                    style: headTextStyle,
                                  )),
                                ),
                                SizedBox(
                                  width: 16,
                                ),
                                Container(
                                  width: 48,
                                  child: Center(
                                      child: Text(
                                    '半场大小',
                                    style: headTextStyle,
                                  )),
                                ),
                                SizedBox(
                                  width: 16,
                                ),
                                Container(
                                  width: 48,
                                  child: Center(
                                      child: Text(
                                    '半场胜负',
                                    style: headTextStyle,
                                  )),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          AnimatedBuilder(
              animation: _sequenceAnimationController,
              builder: (context, child) {
                return Column(
                  children: [
                    Container(
                      height: _sequenceAnimation["height"].value,
                      child: BodyListCardContent(innerKeys: handiCapCount),
                    ), Container(
                      height: _sequenceAnimation["height"].value,
                      child: BodyListCardContent(innerKeys: handiCapCount),
                    )
                  ],
                );
              }),
        ],
      ),
    );
  }
}
