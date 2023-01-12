import 'package:flutter/material.dart';

import 'package:wheel_scroll/am_or_pm.dart';
import 'package:wheel_scroll/hours.dart';
import 'package:wheel_scroll/minutes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentHour = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // minutes wheel
          SizedBox(
            width: 50,
            child: ListWheelScrollView.useDelegate(
              onSelectedItemChanged: (value) {
                setState(() {
                  currentHour = value;
                });
              },
              itemExtent: 50,
              perspective: 0.005,
              diameterRatio: 1.2,
              physics: const FixedExtentScrollPhysics(),
              childDelegate: ListWheelChildBuilderDelegate(
                childCount: 13,
                builder: (context, index) {
                  return Hours(
                    hours: index,
                  );
                },
              ),
            ),
          ),

          const SizedBox(
            width: 20,
          ),

          // hours wheel
          SizedBox(
            width: 50,
            child: ListWheelScrollView.useDelegate(
              itemExtent: 50,
              perspective: 0.005,
              diameterRatio: 1.2,
              physics: const FixedExtentScrollPhysics(),
              childDelegate: ListWheelChildBuilderDelegate(
                childCount: 60,
                builder: (context, index) {
                  return Minutes(
                    mins: index,
                  );
                },
              ),
            ),
          ),

          const SizedBox(
            width: 20,
          ),

          // am or pm
          SizedBox(
            width: 50,
            child: ListWheelScrollView.useDelegate(
              itemExtent: 50,
              perspective: 0.005,
              diameterRatio: 1.2,
              physics: const FixedExtentScrollPhysics(),
              childDelegate: ListWheelChildBuilderDelegate(
                childCount: 2,
                builder: (context, index) {
                  if (index == 0) {
                    return const AmPm(
                      isItAm: true,
                    );
                  } else {
                    return const AmPm(
                      isItAm: false,
                    );
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
