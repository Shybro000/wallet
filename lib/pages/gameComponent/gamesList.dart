import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GamesList extends StatefulWidget {
  const GamesList({super.key});

  @override
  State<GamesList> createState() => _GamesListState();
}

class _GamesListState extends State<GamesList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      margin: const EdgeInsets.symmetric(vertical: 15),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 28,
                height: 28,
                margin: const EdgeInsets.only(right: 8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(14))),
                child: Image.asset("icon/logo.png"),
              ),
              Text('Slot',style: TextStyle(fontSize: 14,color: Color.fromRGBO(51, 51, 51, 1)),)
            ],
          ),
          SizedBox(

            child:InkWell(
              onTap: () {
                Get.toNamed('game/details');
              },
              child:  Container(
              width: double.infinity,
              height: 198,
              margin: const EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('icon/logo.png'), fit: BoxFit.fill),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    height: 40,
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(0, 0, 0, 0.5),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'JPB',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )),
          )
        ],
      ),
    );
  }
}
