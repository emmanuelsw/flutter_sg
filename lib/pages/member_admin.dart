import 'package:flutter/material.dart';

import './home.dart';
import './member_create.dart';
import './member_list.dart';

class MemberAdmin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              AppBar(
                title: Text('Menu'),
              ),
              ListTile(
                title: Text('All members'),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomePage(),
                    ),
                  );
                },
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('Member Admin'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: 'Create Member',
                icon: Icon(Icons.create),
              ),
              Tab(
                text: 'My Members',
                icon: Icon(Icons.list),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            MemberCreatePage(),
            MemberListPage()
          ],
        ),
      ),
    );
  }
}
