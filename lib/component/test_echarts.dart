import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class testEcharts extends StatefulWidget {
  const testEcharts({super.key});

  @override
  State<testEcharts> createState() => _testEchartsState();
}

class _testEchartsState extends State<testEcharts> {
  List<PieChartSectionData> showingSections() {
    return List.generate(1, (i) {
      final double fontSize = 10;
      final double radius = 8;
      switch (i) {
        case 0:
          return PieChartSectionData(
            color: const Color.fromRGBO(25, 116, 254, 1),
            value: 40,
            title: '40%',
            radius: radius,
            showTitle: false,
            titleStyle: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: const Color.fromRGBO(25, 116, 254, 1)),
          );
        default:
          return PieChartSectionData();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      child: PieChart(
        PieChartData(
          borderData: FlBorderData(
            show: false,
          ),
          sectionsSpace: 0,
          centerSpaceRadius: 35,
          sections: showingSections(),
          startDegreeOffset: 0,
          // read about it in the PieChartData section
        ),
        swapAnimationDuration: Duration(milliseconds: 150), // Optional
        swapAnimationCurve: Curves.linear, // Optional
      ),
    );
  }
}
