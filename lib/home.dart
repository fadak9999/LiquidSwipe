// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  //?!
  final pages = [
    Container(
      color: const Color.fromARGB(255, 241, 188, 31),
      child: const Center(child: Text("LiquidSwipe")),
    ),
    Container(
      color: const Color.fromARGB(255, 106, 7, 149),
    ),
    Container(
      color: const Color.fromARGB(255, 212, 212, 212),
    ),
  ];
  //?!
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidSwipe(
        pages: pages,
        enableSideReveal: true, //!المسطرة في الجانب
        //  fullTransitionValue: 300,
        enableLoop: true, //! تفعليل تكرار الصفحات ام لا
        slideIconWidget: const Icon(Icons.arrow_back_ios_new_outlined),
        positionSlideIcon: 0.5,
        waveType: WaveType.liquidReveal,
      ),
    );
  }
}
