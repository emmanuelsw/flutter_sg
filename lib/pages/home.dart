import 'package:flutter/material.dart';

import '../member_manager.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[900],
        title: Text('『 Sakura List 』'),
      ),
      body: MemberManager(startingMember: 'Isono Rinon'),
    );
  }
}
