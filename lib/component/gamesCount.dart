import 'package:flutter/material.dart';

class GamesCount extends StatefulWidget {
  final int count;
  const GamesCount({super.key, required this.count});

  @override
  State<GamesCount> createState() => _GamesCountState(count: count);
}

class _GamesCountState extends State<GamesCount> {
  int count;
  _GamesCountState({required this.count});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 33,
      height: 18,
      decoration: BoxDecoration(
        color: Color.fromRGBO(25, 116, 254, 1),
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '$count',
            style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1), fontSize: 10),
          ),
          SizedBox(width: 2,),
          Image.asset(
            'icon/arrow-white.png',
            width: 10,
            height: 10,
          )
        ],
      ),
    );
  }
}
