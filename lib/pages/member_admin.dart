import 'package:flutter/material.dart';

import './member_create.dart';
import './member_list.dart';

class MemberAdmin extends StatelessWidget {
  final Function addMember, deleteMember;

  MemberAdmin(this.addMember, this.deleteMember);

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
                  Navigator.pushReplacementNamed(context, '/');
                },
              )
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.lightBlue[900],
          title: Text('Member Admin'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text: 'Create Member'),
              Tab(text: 'My Members')
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            MemberCreatePage(addMember),
            MemberListPage()
          ],
        ),
      ),
    );
  }
}
