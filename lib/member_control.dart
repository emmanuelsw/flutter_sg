import 'package:flutter/material.dart';

class MemberControl extends StatelessWidget {
  final Function addMember;

  MemberControl(this.addMember);

  @override
  Widget build(BuildContext context) {
    return RaisedButton.icon(
      onPressed: () {
        addMember({'title': 'Mizuno Yui', 'image': 'assets/yui.jpg'});
      },
      icon: Icon(Icons.add),
      label: Text('Add Member'),
      color: Colors.teal,
      textColor: Colors.white,
    );
  }
}
