
import 'package:flutter/material.dart';

class HeadMatchBetting extends StatefulWidget {
  final Object params;
  const HeadMatchBetting({super.key, required this.params});

  @override
  State<HeadMatchBetting> createState() => _HeadMatchBettingState();
}

class _HeadMatchBettingState extends State<HeadMatchBetting> {
  final String objectKey = '';
  final String itemKey = '';
  final String matchId = '';
  late bool IsSelected = false;

  void handleSelected(){
    setState(() {
      IsSelected=!IsSelected;
      print('点击');
    });
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: handleSelected,
    child:  Container(
      width: 128,
      height: 36,
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
   
      decoration: BoxDecoration(
        color: IsSelected
            ? Color.fromRGBO(25, 116, 254, 1)
            : Color.fromRGBO(255, 255, 255, 1),
        borderRadius: BorderRadius.circular(4.0),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.15),
            offset: Offset(0, 2),
            blurRadius: 3,
            spreadRadius: 0,
          ),
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.14),
            offset: Offset(0, 0),
            blurRadius: 4,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        
        children: [

          Text(
            '-0.5/1',
            style: TextStyle(
                color: IsSelected
                    ? Colors.white
                    : Color.fromRGBO(25, 116, 254, 1)),
          ),
          Text(
            '1.98',
            style: TextStyle(
                color:
                    IsSelected ? Colors.white : Color.fromRGBO(51, 51, 51, 1),
                fontWeight: FontWeight.w900),
          ),
        ],
      ),
      
    ),
    );
  }
}
