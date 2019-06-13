import 'package:flutter/material.dart';

import './member_edit.dart';
import './member_list.dart';

class MemberAdmin extends StatelessWidget {
  final Function addMember, deleteMember;
  final List<Map<String, dynamic>> members;

  MemberAdmin(this.addMember, this.deleteMember, this.members);

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
                leading: Icon(Icons.list),
                title: Text('All members'),
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/members');
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
            MemberEditPage(addMember: addMember),
            MemberListPage(members)
          ],
        ),
      ),
    );
  }
}
