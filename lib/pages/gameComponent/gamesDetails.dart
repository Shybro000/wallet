import 'package:flutter/material.dart';

class GamesDetails extends StatefulWidget {
  const GamesDetails({super.key});

  State<GamesDetails> createState() => _GamesDetailsState();
}

class _GamesDetailsState extends State<GamesDetails> {
  late int gameType = 1;
  late int gameTypeSelect = 4;
  final List<Map<String, dynamic>> gameList = [
    {'id': 1, 'icon': 'icon/PG.png', 'title': 'PG老虎机'},
    {'id': 2, 'icon': 'icon/FG_1.png', 'title': 'PG老虎机'},
    {'id': 3, 'icon': 'icon/JDB.png', 'title': 'JDB老虎机'},
  ];
  final List<Map<String, dynamic>> gameTypeList = [
    {'id': 4, 'title': '全部'},
    {'id': 5, 'title': '欧美主题'},
    {'id': 6, 'title': '中国风'},
  ];
  @override
  Widget build(BuildContext context) {
    const primaryStyle = TextStyle(
        color: Color.fromRGBO(25, 116, 254, 1),
        fontSize: 12,
        height: 1.5,
        fontWeight: FontWeight.w600);
    const defaultStyle = TextStyle(
        color: Color.fromRGBO(51, 51, 51, 1),
        height: 1.5,
        fontSize: 12,
        fontWeight: FontWeight.w400);

    return Scaffold(
      appBar: AppBar(
        title: const Text('User'),
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 112,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('icon/banner.png'),
                        fit: BoxFit.cover)),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 80,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.15),
                          offset: Offset(0, 2),
                          blurRadius: 4.0)
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: gameList.asMap().entries.map((entry) {
                    final index = entry.key;
                    final item = entry.value;
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          gameType = item['id'];
                        });
                      },
                      child: Container(
                        height: double.infinity,
                        width: 65,
                        margin: index == 1
                            ? const EdgeInsets.symmetric(horizontal: 30)
                            : null,
                        child: Flex(
                          direction: Axis.vertical,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              item['icon'],
                              width: 60,
                              height: 24,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Center(
                              child: Text(
                                item['title'],
                                style: gameType == item['id']
                                    ? primaryStyle
                                    : defaultStyle,
                              ),
                            ),
                            SizedBox(
                              height: 9,
                            ),
                            Container(
                              child: gameType == item['id']
                                  ? Container(
                                      width: 28,
                                      height: 3,
                                      decoration: BoxDecoration(
                                          color:
                                              Color.fromRGBO(25, 116, 254, 1),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(2))),
                                    )
                                  : null,
                            )
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 48,
                padding: const EdgeInsets.only(left: 12, right: 12, top: 19),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.1),
                          offset: Offset(0, 1),
                          blurRadius: 4.0)
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: gameTypeList.asMap().entries.map((entry) {
                    final index = entry.key;
                    final item = entry.value;
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          gameTypeSelect = item['id'];
                        });
                      },
                      child: Container(
                        height: double.infinity,
                        width: 65,
                        child: Flex(
                          direction: Axis.vertical,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(
                              child: Text(
                                item['title'],
                                style: gameTypeSelect == item['id']
                                    ? primaryStyle
                                    : defaultStyle,
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(10),
                child: Flex(
                  direction: Axis.horizontal,
                  mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius:
                          BorderRadius.circular(10.0), // 设置Container的圆角
                      child: Container(
                          width: 174, // 宽度
                          height: 124, // 高度
                          color: Colors.blue, // 背景颜色
                          child: Container(
                            width: double.infinity,
                            height: double.infinity,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    height: 32,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(0, 0, 0, 0.6),
                                    ),
                                    child: Row(children: [
                                      Text(
                                        'name',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Text(
                                        '123',
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ]),
                                  )
                                ]),
                          ) // 在这里放置你的子组件
                          ),
                    ),
                    ClipRRect(
                      borderRadius:
                          BorderRadius.circular(10.0), // 设置Container的圆角
                      child: Container(
                          width: 174, // 宽度
                          height: 124, // 高度
                          color: Colors.blue, // 背景颜色
                          child: Container(
                            width: double.infinity,
                            height: double.infinity,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    height: 32,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(0, 0, 0, 0.6),
                                    ),
                                    child: Row(children: [
                                      Text(
                                        'name',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      Text(
                                        '123',
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ]),
                                  )
                                ]),
                          ) // 在这里放置你的子组件
                          ),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
