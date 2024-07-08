import 'package:flutter/material.dart';

class TimeZonePage extends StatefulWidget {
  const TimeZonePage({Key? key}) : super(key: key);
  @override
  State<TimeZonePage> createState() => _TimeZonePageState();
}

class _TimeZonePageState extends State<TimeZonePage> {
  TextEditingController _textController = TextEditingController();
  List<dynamic> timeList = [
    {
      "city": 'ShangHai',
      "differ": "+8",
      "country": "China",
      "day": "02",
      "weekDays": "Jun(Fri)",
    }
  ];
  void handleSelect(params) {
    print(params);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(247, 247, 247, 1),
      appBar: AppBar(
        title: const Text('TimeZone Settings'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 90,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 9),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 40,
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'icon/search.png',
                          width: 20,
                          height: 20,
                        ),
                        Expanded(
                            child: Center(
                          child: TextField(
                            controller: _textController,
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                              filled: true,
                              hintText: 'Search country or city',
                              hintStyle: TextStyle(
                                  color: Color.fromRGBO(153, 153, 153, 1),
                                  fontSize: 14),
                            ),
                          ),
                        ))
                      ],
                    ),
                  ),
                  Text(
                    'Select Language',
                    style: TextStyle(
                        color: Color.fromRGBO(51, 51, 51, 1), fontSize: 12),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: timeList.length,
                itemBuilder: (BuildContext context, int index) {
                  return timeZoneChild(
                    zoneList: timeList[index],
                    onPressedChild:handleSelect,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class timeZoneChild extends StatelessWidget {
  final dynamic zoneList;
  final Function(dynamic) onPressedChild;

  const timeZoneChild(
      {Key? key, required this.zoneList, required this.onPressedChild})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    const textDefault =
        TextStyle(fontSize: 14, color: Color.fromRGBO(51, 51, 51, 1));
    const titleDefault =
        TextStyle(fontSize: 10, color: Color.fromRGBO(153, 153, 153, 1));

    const selectText =
        TextStyle(fontSize: 14, color: Color.fromRGBO(25, 116, 254, 1));
    const selectTitle =
        TextStyle(fontSize: 10, color: Color.fromRGBO(25, 116, 254, 1));
    return Container(
      width: double.infinity,
      height: 62,
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          color: Colors.white),
      child: InkWell(
        onTap: () {
          onPressedChild(zoneList);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  zoneList['city'],
                  style: textDefault,
                ),
                Text(
                  'GMT ${zoneList["differ"]}:00',
                  style: textDefault,
                )
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  zoneList['country'],
                  style: titleDefault,
                ),
                Text(
                  '${zoneList["day"]} ${zoneList["weekDays"]}',
                  style: titleDefault,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
