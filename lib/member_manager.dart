import 'package:flutter/material.dart';

import './members.dart';
import './member_control.dart';

class MemberManager extends StatelessWidget {
  final List<Map<String, String>> members;
  final Function addMember, deleteMember;

  MemberManager(this.members, this.addMember, this.deleteMember);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: EdgeInsets.only(top: 10.0, bottom: 7.0),
        child: Center(
          child: MemberControl(addMember),
        ),
      ),
      Expanded(
        child: Members(members, deleteMember),
      ),
    ]);
  }
}
