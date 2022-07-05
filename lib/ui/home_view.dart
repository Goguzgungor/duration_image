import 'dart:async';

import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List imageList = [
    'assets/dragon0.jpg',
    'assets/dragon1.jpg',
    'assets/dragon2.jpg',
    'assets/dragon3.jpg',
    'assets/dragon4.jpg',
    'assets/dragon5.jpg',
    'assets/dragon6.jpg',
    'assets/dragon7.jpg',
  ];

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  PageController _pageController = PageController(initialPage: 0);
  int pageChanged = 0;

  void startTimer() {
    Timer _timer = Timer.periodic(Duration(seconds: 2), (timer) {
      setState(() {
        if (imageList.length - 1 >= pageChanged) {
          pageChanged++;
          _pageController.animateToPage(pageChanged, duration: Duration(microseconds: 250), curve: Curves.bounceIn);
          print(pageChanged);
        } else {
          timer.cancel();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('PageView Demo'),
        ),
        body: PageView(
          controller: _pageController,
          children: [
            Image.asset(
              imageList[0],
              fit: BoxFit.scaleDown,
            ),
            Image.asset(
              imageList[1],
              fit: BoxFit.scaleDown,
            ),
            Image.asset(
              imageList[2],
              fit: BoxFit.scaleDown,
            ),
            Image.asset(
              imageList[3],
              fit: BoxFit.scaleDown,
            ),
            Image.asset(
              imageList[4],
              fit: BoxFit.scaleDown,
            ),
            Image.asset(
              imageList[5],
              fit: BoxFit.scaleDown,
            ),
            Image.asset(
              imageList[6],
              fit: BoxFit.scaleDown,
            ),
            Image.asset(
              imageList[7],
              fit: BoxFit.scaleDown,
            ),
          ],
        ));
  }
}
