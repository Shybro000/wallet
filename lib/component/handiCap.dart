import 'package:flutter/material.dart';
import 'package:flutter_application/pages/homeComponent/bodyListCardScore.dart';

class HandiCap extends StatefulWidget {
  final int innerKeys;
  final bool isOnlyOne;
  final valueFromParent;

  const HandiCap(
      {Key? key,
      this.valueFromParent,
      required this.innerKeys,
      required this.isOnlyOne})
      : super(key: key);
  @override
  State<HandiCap> createState() =>
      _HandiCapState(innerKeys: innerKeys, isOnlyOne: isOnlyOne);
}

class _HandiCapState extends State<HandiCap> with TickerProviderStateMixin {
  TabController? _tabController;
  int innerKeys;
  bool isOnlyOne;
  _HandiCapState({required this.innerKeys, required this.isOnlyOne});

  @override
  void initState() {
    super.initState();
    innerKeys = widget.valueFromParent ?? 0;
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void didUpdateWidget(covariant HandiCap oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.innerKeys != widget.innerKeys) {
      _tabController?.animateTo(widget.innerKeys);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 60,
      child: TabBarView(
        controller: _tabController,
        physics: new NeverScrollableScrollPhysics(),
        children: [
          Container(
            width: 180,
            height: 60,
            padding: const EdgeInsets.only(right: 2),
            child: isOnlyOne
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [BodyListCardScore()],
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      BodyListCardScore(),
                      SizedBox(
                        width: 4,
                      ),
                      BodyListCardScore(),
                      SizedBox(
                        width: 4,
                      ),
                      BodyListCardScore(),
                    ],
                  ),
          ),
          Container(
            width: 180,
            height: 60,
            padding: const EdgeInsets.only(right: 2),
            child: isOnlyOne
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [BodyListCardScore()],
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      BodyListCardScore(),
                      SizedBox(
                        width: 4,
                      ),
                      BodyListCardScore(),
                      SizedBox(
                        width: 4,
                      ),
                      BodyListCardScore(),
                    ],
                  ),
          ),
        ],
      ),
    );
  }
}
