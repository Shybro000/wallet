import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});
  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  final List<String> messageTitleList = [
    'Promotions',
    'Announcement',
    'Inbox',
  ];
  late int messageSelect = 0;

  @override
  Widget build(BuildContext context) {
    void handleDelete() {
      print('Delete action pressed');
    }

    void handleRead(BuildContext context) {
      print('read');
    }

    return Scaffold(
      appBar: AppBar(
        primary: true,
        title: Center(
          child: const Text(
            'Message List',
            style: TextStyle(
              fontSize: 16,
              color: Color.fromRGBO(51, 51, 51, 1),
            ),
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            size: 28,
            color: Color.fromRGBO(41, 41, 41, 1),
          ),
          onPressed: () {
            // 在这里添加左侧按钮的点击事件
            Get.back();
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Text(
              'Edit',
              style:
                  TextStyle(fontSize: 12, color: Color.fromRGBO(51, 51, 51, 1)),
            ),
            onPressed: () {
              // 在这里添加右侧按钮的点击事件
            },
          ),
        ],
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                height: 50,
                margin: const EdgeInsets.only(bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: List.generate(messageTitleList.length, (index) {
                    final item = messageTitleList[index];
                    return Expanded(
                        flex: 1,
                        child: GestureDetector(
                            onTap: () {
                              setState(() {
                                int itemIndex = index;
                                messageSelect = itemIndex;
                              });
                            },
                            child: Center(
                              child: Text(item.toString(),
                                  key: ValueKey('messageType$index'),
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: messageSelect == index
                                          ? Color.fromRGBO(51, 51, 51, 1)
                                          : Color.fromRGBO(153, 153, 153, 1))),
                            )));
                  }),
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                margin: const EdgeInsets.only(bottom: 14),
                child: Slidable(
                  key: const ValueKey(0),
                  child: Container(
                    height: 105,
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Maintenance of AE CASINO',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color.fromRGBO(51, 51, 51, 1)),
                          ),
                          Container(
                            width: 44,
                            height: 20,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4)),
                                color: Color.fromRGBO(25, 116, 254, 0.1)),
                            child: Center(
                                child: Text(
                              'unRead',
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(25, 116, 254, 1)),
                            )),
                          )
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 8, bottom: 12),
                        child: Text(
                          '2023-05-10 09:30(GMT1+08:00)',
                          style: TextStyle(
                              fontSize: 10,
                              color: Color.fromRGBO(153, 153, 153, 1)),
                        ),
                      ),
                      Container(
                        child: Text(
                          'Maintenance of AE CASINO',
                          style: TextStyle(
                              fontSize: 12,
                              color: Color.fromRGBO(51, 51, 51, 1)),
                        ),
                      )
                    ]),
                  ),
                  endActionPane: ActionPane(
                    extentRatio: 0.3, // 控制滑动项widget的大小
                    motion:
                        const DrawerMotion(), // 抽屉式效果, 还有另外三种效果: 分别是BehindMotion, ScrollMotion, StretchMotion
                    // 滑动出来的widget
                    children: [
                      SlidableAction(
                        onPressed: (_) {
                          handleDelete();
                        },
                        icon: Icons.delete,
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.transparent,
                        label: '删除',
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
