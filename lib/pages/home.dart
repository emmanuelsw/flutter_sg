import 'package:flutter/material.dart';

import '../member_manager.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, String>> members;
  final Function addMember, deleteMember;

  HomePage(this.members, this.addMember, this.deleteMember);

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
                Navigator.pushReplacementNamed(context, '/admin');
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[900],
        title: Text('『 Sakura List 』'),
      ),
      body: MemberManager(members, addMember, deleteMember),
    );
  }
}
