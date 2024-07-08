import 'package:flutter/material.dart';
import 'package:flutter_sequence_animation/flutter_sequence_animation.dart';
import 'package:get/route_manager.dart';

class CommonMoney extends StatefulWidget {
  const CommonMoney({
    super.key,
  });

  @override
  State<CommonMoney> createState() => _CommonMoneyState();
}

class _CommonMoneyState extends State<CommonMoney>
    with SingleTickerProviderStateMixin {
  _CommonMoneyState();
  late AnimationController _controller;
  late bool isRolling = false;
  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 38,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
            color: Colors.transparent,

        borderRadius: BorderRadius.all(Radius.circular(18)),
      ),
      child: GestureDetector(
        onTap: () {
          // _controller.reset();
          if (isRolling) {
            _controller.reverse();
          } else {
            _controller.forward(from: 0.0);
            showDialog(
                context: context,
                barrierDismissible: true,
                useRootNavigator: true,
                builder: (BuildContext context) {
                  return moneyDialog();
                });
          }

          setState(() {
            isRolling = !this.isRolling;
          });
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'icon/BTC.png',
              width: 16,
              height: 16,
            ),
            Container(
              width: 78,
              margin: const EdgeInsets.only(left: 8, right: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '0',
                    style: TextStyle(
                        color: Color.fromRGBO(25, 116, 254, 1), fontSize: 12),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'icon/jb.png',
                        width: 12,
                        height: 12,
                      ),
                      Expanded(
                        child: Text(
                          '120000444444444',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Color.fromRGBO(41, 41, 41, 1),
                              decoration: TextDecoration.none,
                              fontSize: 12),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            RotationTransition(
              turns: Tween<double>(
                begin: 0,
                end: 0.12,
              ).animate(_controller),
              child: Icon(
                Icons.add_circle_rounded,
                size: 16,
                color: Color.fromRGBO(25, 116, 254, 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class moneyDialog extends StatefulWidget {
  moneyDialog({super.key});

  @override
  State<moneyDialog> createState() => _moneyDialogState();
}

class _moneyDialogState extends State<moneyDialog>
    with TickerProviderStateMixin {
  late SequenceAnimation dialogAnimation;
  late AnimationController dialogController;
  void initState() {
    super.initState();

    dialogController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );

    dialogAnimation = SequenceAnimationBuilder()
        .addAnimatable(
          animatable: Tween<double>(begin: 0, end: 300),
          from: Duration.zero,
          to: Duration(milliseconds: 300),
          tag: "height",
          curve: Curves.easeIn,
        )
        .animate(dialogController);
    dialogController.forward(from: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.transparent,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 44),
      child: Flex(
        direction: Axis.vertical,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AnimatedBuilder(
              animation: dialogController,
              builder: (context, child) {
                return Container(
                  width: 360,
                  height: dialogAnimation['height'].value,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text('123'),
                  ),
                );
              })
        ],
      ),
    );
  }
}
