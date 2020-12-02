import 'package:flutter/material.dart';
import 'package:portfolio_flutter_web/header/header_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rishu Roy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: PortfolioView(),
    );
  }
}

class PortfolioView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    //print(height);
    // print(width);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderView(),
            Container(
              height: height,
              width: width,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}

// cmd + shift + L -> sellect similar things
// cmd + shift + up/down/right/left arrow select simultaneosly
// cmd + D -> select same word and highlight the cursor
// alt + shift + down -> copy and paste wihout highlighting
