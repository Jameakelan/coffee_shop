import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChartPage extends StatefulWidget {
  const ChartPage({Key? key}) : super(key: key);

  @override
  State<ChartPage> createState() => _ChartPageState();
}

class _ChartPageState extends State<ChartPage> {
  List<FlSpot> dummyData1 = List.generate(8, (index) {
    return FlSpot(index.toDouble(), index * Random().nextDouble());
  });

  List<FlSpot> dummyData2 = List.generate(8, (index) {
    return FlSpot(index.toDouble(), index * Random().nextDouble());
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("My Chart"),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.5,
              child: LineChart(
                LineChartData(
                  lineBarsData: [
                    LineChartBarData(
                      spots: dummyData1,
                      isCurved: true,
                      barWidth: 3,
                      color: Colors.indigo,
                    ),
                    LineChartBarData(
                      spots: dummyData2,
                      isCurved: true,
                      barWidth: 3,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    dummyData1 = List.generate(8, (index) {
                      return FlSpot(
                          index.toDouble(), index * Random().nextDouble());
                    });

                    dummyData2 = List.generate(8, (index) {
                      return FlSpot(
                          index.toDouble(), index * Random().nextDouble());
                    });
                  });
                },
                child: const Text("เปลี่ยนข้อมูล"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
