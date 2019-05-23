import 'package:flutter/material.dart';

import './member_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue[900],
          title: Text('『 Sakura List 』'),
        ),
        body: MemberManager('Isono Rinon'),
      ),
    );
  }
}
