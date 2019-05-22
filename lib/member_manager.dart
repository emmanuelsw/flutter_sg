import 'package:flutter/material.dart';

import './members.dart';

class MemberManager extends StatefulWidget {
  final String startingMember;
  MemberManager(this.startingMember);

  @override
  State<StatefulWidget> createState() {
    return _MemberManagerState();
  }
}

class _MemberManagerState extends State<MemberManager> {
  List<String> _members = [];

  @override
  void initState() {
    super.initState();
    _members.add(widget.startingMember);
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: EdgeInsets.all(10.0),
        child: Center(
          child: RaisedButton.icon(
            onPressed: () {
              setState(() {
                _members.add('Tensai');
              });
            },
            icon: Icon(Icons.add),
            label: Text('Add Member'),
            color: Colors.teal,
            textColor: Colors.white,
          ),
        ),
      ),
      Members(_members),
    ]);
  }
}
