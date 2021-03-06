import 'package:flutter/material.dart';
import './member_edit.dart';

class MemberListPage extends StatelessWidget {
  final Function updateMember, deleteMember;
  final List<Map<String, dynamic>> members;

  MemberListPage(this.members, this.updateMember, this.deleteMember);

  Widget _editButton(BuildContext context, int index) {
    return IconButton(
      color: Colors.pink[800],
      icon: Icon(Icons.edit),
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (BuildContext context) {
            return MemberEditPage(
              member: members[index], 
              updateMember: updateMember, 
              memberIndex: index
            );
          }),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: members.length,
      itemBuilder: (BuildContext context, int index) {
        return Dismissible(
          onDismissed: (DismissDirection direction) {
            if (direction == DismissDirection.endToStart) {
              deleteMember(index);
            }
          },
          key: Key(index.toString()),
          background: Container(color: Colors.red),
          child: ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 0.0),
            leading: CircleAvatar(
              backgroundImage: AssetImage(members[index]['image']),
            ),
            title: Text(members[index]['title']),
            subtitle: Text(
              'Sakura Gakuin',
              style: TextStyle(fontSize: 12.5, fontStyle: FontStyle.italic),
            ),
            trailing: _editButton(context, index),
          ),
        );
      },
    );
  }
}
