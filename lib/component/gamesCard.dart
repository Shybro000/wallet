import 'package:flutter/material.dart';

class gameCards extends StatefulWidget {
  const gameCards({super.key});

  @override
  State<gameCards> createState() => _gameCardsState();
}

class _gameCardsState extends State<gameCards> {
  late bool isMoveCards = false;
  @override
  Widget build(BuildContext context) {
    const textDefault =
        TextStyle(color: Color.fromRGBO(130, 130, 130, 1), fontSize: 12);
    const titleDefault =
        TextStyle(color: Color.fromRGBO(227, 227, 227, 1), fontSize: 16);
    const importDefault =
        TextStyle(color: Color.fromRGBO(255, 219, 122, 1), fontSize: 12);
    return Container(
      width: 226,
      height: 260,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          color: Color.fromRGBO(0, 0, 0, 0.2)),
      child: Stack(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MouseRegion(
              onEnter: (event) {
                // 当鼠标进入时改变部件的状态
                setState(() {
                  isMoveCards = true;
                });
              },
              onExit: (event) {
                // 当鼠标离开时改变部件的状态
                setState(() {
                  isMoveCards = false;
                });
              },
              child: Container(
                width: double.infinity,
                height: 140,
                decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(16)),
                    image: DecorationImage(
                      image: AssetImage('icon/banner.png'),
                      fit: BoxFit.fill,
                      repeat: ImageRepeat.noRepeat,
                    )),
                child: Center(
                    child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius:
                         const BorderRadius.vertical(top: Radius.circular(16)),
                      color: isMoveCards ? const Color.fromRGBO(0, 0, 0, 0.6) : null),
                  child: isMoveCards
                      ?const Icon(
                          Icons.ac_unit_sharp,
                          color: Color.fromRGBO(54, 255, 255, 1),
                        )
                      : null,
                )),
              ),
            ),
            Container(
              width: double.infinity,
              height: 120,
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'LOL海克斯科技厅',
                    style: titleDefault,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '吃鸡开黑娱乐广场，祝各位大吉大利，今晚吃鸡!',
                    style: textDefault,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '主持人名称',
                        style: textDefault,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '109人',
                        style: textDefault,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '#大神带飞',
                        style: importDefault,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
        Positioned(
            right: 0,
            top: 0,
            child: Container(
              width: 124,
              height: 24,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(0, 0, 0, 0.6),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(16),
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8))),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.games,
                      size: 18,
                    ),
                    Text(
                      '绝地求生',
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    )
                  ],
                ),
              ),
            )),
        Positioned(
          top: 117,
          left: 16,
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                image: DecorationImage(
                    repeat: ImageRepeat.noRepeat,
                    image: AssetImage('icon/football.png'),
                    fit: BoxFit.cover)),
          ),
        ),
      ]),
    );
  }
}
