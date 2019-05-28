import 'package:flutter/material.dart';

import '../member_manager.dart';
import './member_admin.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: Text('Choose'),
            ),
            ListTile(
              title: Text('Manage Members'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => MemberAdmin(),
                  ),
                );
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[900],
        title: Text('『 Sakura List 』'),
      ),
      body: MemberManager(startingMember: {
        'title': 'Isono Rinon',
        'image': 'assets/rinon.jpg'
      }),
    );
  }
}
