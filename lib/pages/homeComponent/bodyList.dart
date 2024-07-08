import 'package:flutter/material.dart';
import 'package:flutter_application/pages/homeComponent/bodyListCard.dart';
import 'package:get/route_manager.dart';

class BodyList extends StatefulWidget {
  const BodyList({super.key});
  @override
  State<BodyList> createState() => _BodyListState();
}

class _BodyListState extends State<BodyList>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  late String selectMatchType = '0';
  late int selectMatchIsAll = 0;

  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  void handleMatch(val) {
    setState(() {
      selectMatchType = val;
    });
  }

  void handleMatchAll(val) {
    setState(() {
      selectMatchIsAll = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(247,247,247,1),
      ),
      margin: const EdgeInsets.only(bottom: 12),
      child: Column(children: [
        Container(
            height: 50,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 1),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.0),
                topRight: Radius.circular(16.0),
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'icon/football.png',
                      width: 20,
                      height: 20,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    const Text(
                      '足球',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Image.asset(
                      'icon/unexpand.png',
                      width: 20,
                      height: 20,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 90,
                      height: 24,
                      margin: const EdgeInsets.only(right: 6),
                      padding: const EdgeInsets.symmetric(horizontal: 1),
                      clipBehavior: Clip.hardEdge,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(249, 249, 249, 1),
                        borderRadius: BorderRadius.all(Radius.circular(14.0)),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(200, 200, 200, 0.78),
                            blurRadius: 0.5,
                            spreadRadius: 0.5,
                          )
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                              onTap: () => handleMatch('1'),
                              child: AnimatedContainer(
                                width: 44,
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(249, 249, 249, 1),
                                  border: selectMatchType == '1'
                                      ? Border.all(
                                          color: const Color.fromRGBO(
                                              255, 255, 255, 1),
                                          width: 1)
                                      : null,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(12.0)),
                                  gradient: selectMatchType == '1'
                                      ? const LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Color.fromRGBO(255, 255, 255, 1),
                                            Color.fromRGBO(239, 239, 239, 1),
                                          ],
                                        )
                                      : null,
                                ),
                                duration: const Duration(milliseconds: 300),
                                child: const Center(
                                    child: Text(
                                  '联赛',
                                  style: TextStyle(fontSize: 12),
                                )),
                              )),
                          GestureDetector(
                              onTap: () => handleMatch('2'),
                              child: AnimatedContainer(
                                width: 44,
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(249, 249, 249, 1),
                                  border: selectMatchType == '2'
                                      ? Border.all(
                                          color: const Color.fromRGBO(
                                              255, 255, 255, 1),
                                          width: 1)
                                      : null,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(12.0)),
                                  gradient: selectMatchType == '2'
                                      ? const LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Color.fromRGBO(255, 255, 255, 1),
                                            Color.fromRGBO(239, 239, 239, 1),
                                          ],
                                        )
                                      : null,
                                ),
                                duration: const Duration(milliseconds: 300),
                                child: const Center(
                                    child: Text(
                                  '时间',
                                  style: TextStyle(fontSize: 12),
                                )),
                              )),
                        ],
                      ),
                    ),
                    Container(
                      width: 90,
                      height: 24,
                      margin: const EdgeInsets.only(right: 6),
                      padding: const EdgeInsets.symmetric(horizontal: 1),
                      clipBehavior: Clip.hardEdge,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(249, 249, 249, 1),
                        borderRadius: BorderRadius.all(Radius.circular(14.0)),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(200, 200, 200, 0.78),
                            blurRadius: 0.5,
                            spreadRadius: 0.5,
                          )
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                              onTap: () => handleMatchAll(0),
                              child: AnimatedContainer(
                                width: 44,
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(249, 249, 249, 1),
                                  border: selectMatchIsAll == 0
                                      ? Border.all(
                                          color: const Color.fromRGBO(
                                              255, 255, 255, 1),
                                          width: 1)
                                      : null,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(12.0)),
                                  gradient: selectMatchIsAll == 0
                                      ? const LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Color.fromRGBO(255, 255, 255, 1),
                                            Color.fromRGBO(239, 239, 239, 1),
                                          ],
                                        )
                                      : null,
                                ),
                                duration: const Duration(milliseconds: 300),
                                child: const Center(
                                    child: Text(
                                  '半场',
                                  style: TextStyle(fontSize: 12),
                                )),
                              )),
                          GestureDetector(
                              onTap: () => handleMatchAll(1),
                              child: AnimatedContainer(
                                width: 44,
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(249, 249, 249, 1),
                                  border: selectMatchIsAll == 1
                                      ? Border.all(
                                          color: const Color.fromRGBO(
                                              255, 255, 255, 1),
                                          width: 1)
                                      : null,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(12.0)),
                                  gradient: selectMatchIsAll == 1
                                      ? const LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Color.fromRGBO(255, 255, 255, 1),
                                            Color.fromRGBO(239, 239, 239, 1),
                                          ],
                                        )
                                      : null,
                                ),
                                duration: const Duration(milliseconds: 300),
                                child: const Center(
                                    child: Text(
                                  '全场',
                                  style: TextStyle(fontSize: 12),
                                )),
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )),
        Column(
          children: [
            BodyListCard(
              innerKeys: selectMatchIsAll,
            ),
            Container(
              width: double.infinity,
              height: 44,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              margin: const EdgeInsets.symmetric(vertical: 12),
              child: Center(
                child: Container(
                  width: double.infinity,
                  height: 44,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.16),
                          offset: Offset(0, 0),
                          blurRadius: 2,
                          spreadRadius: 0,
                        ),
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(0, 0),
                          blurRadius: 5,
                          spreadRadius: 0,
                          // 设置为 inset 以创建内阴影效果
                          // 注意：在 Flutter 中，内阴影效果由 invertOcclusion 参数控制，默认为 false
                          // 如果要创建内阴影效果，可以将 invertOcclusion 设置为 true
                          // 或者也可以使用两个 BoxShadow，一个设置正常阴影，一个设置内阴影，并分别调整其位置
                          // 此示例中直接将 invertOcclusion 设置为 true
                          // invertOcclusion: true,
                        
                        ),
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '更多玩法',
                        style: TextStyle(
                            color: Color.fromRGBO(51, 51, 51, 1), fontSize: 12),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Color.fromRGBO(51, 51, 51, 1),
                        size: 12,
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ]),
    );
  }
}
