import 'package:flutter/material.dart';

import './members.dart';

class MemberManager extends StatelessWidget {
  final List<Map<String, dynamic>> members;

  MemberManager(this.members);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
        child: Members(members),
      ),
    ]);
  }
}
