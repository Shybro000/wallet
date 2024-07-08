import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommonCard extends StatelessWidget {
  final double cardWidth;
  final List<Map<String, dynamic>> childList;

  const CommonCard({
    Key? key,
    required this.cardWidth,
    required this.childList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const headTitleStyle = TextStyle(
        color: Color.fromRGBO(51, 51, 51, 1),
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: 1.3);
    return SizedBox(
      width: cardWidth,
      child: Column(
        children: childList.asMap().entries.map((entry) {
          final itemIndex = entry.key;
          final item = entry.value;
          final childItem = item['child'];
          return Container(
            width: double.infinity,
            margin: const EdgeInsets.only(bottom: 14),
            decoration: BoxDecoration(color: Color.fromRGBO(255, 255, 255, 1)),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 45,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        item['title'],
                        style: headTitleStyle,
                      ),
                    ],
                  ),
                ),
                Column(
                  children: List.generate(childItem.length, (childIndex) {
                    final childData = childItem[childIndex];
                    return InkWell(
                      onTap: () {
                        if (childData['tnName'] != null) {
                          Get.toNamed('/user/' + childData['tnName']);
                        }
                      },
                      child: Container(
                        width: double.infinity,
                        height: 50,
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    childData['icon'],
                                    width: 24,
                                    height: 24,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(childData['title'])
                                ],
                              ),
                            ),
                            Image.asset(
                              'icon/arrow-r.png',
                              width: 12,
                              height: 12,
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                )
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
