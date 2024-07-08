import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardsManagePage extends StatefulWidget {
  const CardsManagePage({super.key});
  @override
  State<CardsManagePage> createState() => _CardsManagePageState();
}

class _CardsManagePageState extends State<CardsManagePage> {
  List<dynamic> cardsList = [
    {
      "addressId": 1,
      "address": "123123123123123",
      "alias": "China",
      'isUse': true
    },
    {
      "addressId": 2,
      "address": "123123123123123",
      "alias": "China",
      'isUse': false
    },
    {
      "addressId": 3,
      "address": "123123123123123",
      "alias": "China",
      'isUse': false
    }
  ];
  @override
  Widget build(BuildContext context) {
    const textDefuletStyle =
        TextStyle(color: Color.fromRGBO(51, 51, 51, 1), fontSize: 14);

    return Scaffold(
      backgroundColor: const Color.fromRGBO(247, 247, 247, 1),
      appBar: AppBar(
        primary: true,
        backgroundColor: Colors.transparent,
        title: Center(
          child: const Text(
            'Card',
            style:
                TextStyle(color: Color.fromRGBO(51, 51, 51, 1), fontSize: 16),
          ),
        ),
        actions: <Widget>[
          InkWell(
            child: Text(
              'Edit',
              style:
                  TextStyle(fontSize: 12, color: Color.fromRGBO(51, 51, 51, 1)),
            ),
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 60,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              margin: const EdgeInsets.only(bottom: 14),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                color: Colors.white,
              ),
              child: InkWell(
                onTap: () {
                  Get.toNamed('/user/cardsManage/addCard');
                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'icon/add.png',
                      width: 16,
                      height: 16,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Add bank card',
                      style: textDefuletStyle,
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              constraints: BoxConstraints(
                maxHeight: 500,
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8.0))),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 50,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.select_all,
                          size: 20,
                        ),
                        Container(
                          child: Row(children: [
                            Text(
                              'Total',
                              style: textDefuletStyle,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              '10',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(229, 14, 23, 1)),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              'Card(s)',
                              style: textDefuletStyle,
                            )
                          ]),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: cardsList.length,
                      itemBuilder: (BuildContext context, int index) {
                        final item = cardsList[index];
                        return Container(
                          width: double.infinity,
                          height: 100,
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Stack(
                            children: [
                              Container(
                                width: double.infinity,
                                height: double.infinity,
                                margin: const EdgeInsets.only(bottom: 14),
                                padding: const EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8)),
                                    color: item['isUse']
                                        ? Color.fromRGBO(0, 153, 76, 1)
                                        : Color.fromRGBO(218, 32, 38, 1)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 40,
                                      height: 40,
                                      margin: const EdgeInsets.only(right: 13),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20))),
                                      child: Center(
                                        child: Icon(
                                          Icons.monetization_on,
                                          size: 28,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            item['alias'],
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            item['address'],
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Positioned(
                                  bottom: 14,
                                  right: 0,
                                  child: Container(
                                    width: 55,
                                    height: 30,
                                    decoration: const BoxDecoration(
                                        color:
                                            Color.fromRGBO(255, 255, 255, 0.22),
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            bottomRight: Radius.circular(4))),
                                    child: const Center(
                                      child: Text(
                                        'Delete',
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.white),
                                      ),
                                    ),
                                  ))
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
