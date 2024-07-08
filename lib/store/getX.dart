import 'package:get/get.dart';

class MyReducer extends GetxController {
  var count = 0.obs;
  var ScoreBetList = [
    {'id': 2},
    {'id': 3},
    {'id': 1}
  ].obs;
  var currencyList = [
    {
      'id': 'Btc',
      'count': 0,
      'now': true,
      'name': 'BTC',
      'icon': 'icon/BTC.png'
    },
    {
      'id': 'Usdt',
      'name': 'USDT',
      'count': 23,
      'now': false,
      'icon': 'icon/BTC.png'
    }
  ];
  void incrementScoreBet(params) {
    var listKey = ScoreBetList.any((element) => element['id'] == params['id']);
    if (listKey) return;
    ScoreBetList.add(params);
    print(ScoreBetList);
  }

  void decrement() {
    count--;
  }
}
