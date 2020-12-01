import 'package:flutter/material.dart';

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
      ),
      home: DesktopView(),
    );
  }
}

class DesktopView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    print(height);
    print(width);
    return Scaffold(
      body: Column(
        children: [Container(), Container()],
      ),
    );
  }
}

// cmd + shift + L -> sellect similar things
// cmd + shift + up/down/right/left arrow select simultaneosly
// cmd + D -> select same word and highlight the cursor
