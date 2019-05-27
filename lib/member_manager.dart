import 'package:flutter/material.dart';

import './members.dart';
import './member_control.dart';

class MemberManager extends StatefulWidget {
  final Map<String, String> startingMember;
  MemberManager({this.startingMember});

  @override
  State<StatefulWidget> createState() {
    return _MemberManagerState();
  }
}

class _MemberManagerState extends State<MemberManager> {
  List<Map<String, String>> _members = [];

  @override
  void initState() {
    super.initState();
    if (widget.startingMember != null) {
      _members.add(widget.startingMember);
    }
  }

  void _addMember(Map<String, String> member) {
    setState(() {
      _members.add(member);
    });
  }

  void _deleteMember(int index) {
    setState(() {
      _members.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: EdgeInsets.only(top: 10.0, bottom: 7.0),
        child: Center(
          child: MemberControl(_addMember),
        ),
      ),
      Expanded(
        child: Members(_members, _deleteMember),
      ),
    ]);
  }
}
