import 'package:flutter/material.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({super.key});
  @override
  State<StatefulWidget> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  final List LanguageList = [
    {
      'id': 1,
      'icon': 'icon/china.png',
      'val': '中文',
    },
    {
      'id': 2,
      'icon': 'icon/china.png',
      'val': 'English',
    }
  ];
  late int selectLanguage = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(247,247,247,1),
      appBar: AppBar(
        title: const Text('Language'),
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Select Language',
                      style: TextStyle(
                          color: Color.fromRGBO(153, 153, 153, 1),
                          fontSize: 12),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Column(
                        children: List.generate(LanguageList.length, (index) {
                      final item = LanguageList[index];
                      final key = ValueKey<int>(item['id']);
                      final bool isLastItem = index == LanguageList.length - 1;
                      return Container(
                        width: double.infinity,
                        key: key,
                        height: 44,
                        padding: const EdgeInsets.symmetric(horizontal: 14),
                        margin: isLastItem
                            ? null
                            : const EdgeInsets.only(bottom: 12),
                        decoration: BoxDecoration(
                            color: selectLanguage == item['id']
                                ? Color.fromRGBO(25, 116, 254, 0.08)
                                : Color.fromRGBO(250, 250, 250, 1),
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              selectLanguage = item['id'];
                            });
                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 20,
                                    height: 20,
                                    margin: const EdgeInsets.only(right: 10),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        color: Color.fromRGBO(240, 240, 240, 1),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(4))),
                                    child: Image.asset(
                                      item['icon'],
                                      width: 12.5,
                                      height: 12.5,
                                    ),
                                  ),
                                  Text(
                                    item['val'],
                                    style: TextStyle(
                                        color: Color.fromRGBO(41, 41, 41, 1),
                                        fontWeight: selectLanguage == item['id']
                                            ? FontWeight.w500
                                            : FontWeight.w400,
                                        fontSize: 12),
                                  )
                                ],
                              ),
                              SizedBox(
                                child: selectLanguage == item['id']
                                    ? Image.asset(
                                        'icon/selected.png',
                                        width: 14,
                                        height: 14,
                                      )
                                    : null,
                              )
                            ],
                          ),
                        ),
                      );
                    }).toList())
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
