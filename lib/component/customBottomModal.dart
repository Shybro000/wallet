import 'package:flutter/material.dart';

class customBottomModal extends StatefulWidget {
  final Function ChangeValue;
  const customBottomModal({super.key, required this.ChangeValue});
  @override
  State<customBottomModal> createState() => _customBottomModalState();
}

class _customBottomModalState extends State<customBottomModal> {
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
    return FractionallySizedBox(
      widthFactor: 1,
      heightFactor: 0.7,
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.horizontal(
                left: Radius.circular(20), right: Radius.circular(20))),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 30,
              margin: const EdgeInsets.only(bottom: 20),
              child: Center(
                child: Text('title'),
              ),
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
                margin: isLastItem ? null : const EdgeInsets.only(bottom: 12),
                decoration: BoxDecoration(
                    color: selectLanguage == item['id']
                        ? Color.fromRGBO(25, 116, 254, 0.08)
                        : Color.fromRGBO(250, 250, 250, 1),
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      selectLanguage = item['id'];
                      widget.ChangeValue(item);
                      Navigator.of(context).pop();
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4))),
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
          ],
        ),
      ),
    );
  }
}
