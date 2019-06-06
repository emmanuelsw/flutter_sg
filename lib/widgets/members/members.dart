import 'package:flutter/material.dart';
import './member_card.dart';

class Members extends StatelessWidget {
  final List<Map<String, dynamic>> members;

  Members(this.members);

  Widget _buildMemberList() {
    Widget memberCards;

    if (members.length > 0) {
      memberCards = ListView.builder(
        itemBuilder: (BuildContext context, index) => MemberCard(members[index], index),
        itemCount: members.length,
      );
    } else {
      memberCards = Center(
        child: Text('No members found, please add some.'),
      );
    }

    return memberCards;
  }

  @override
  Widget build(BuildContext context) {
    return _buildMemberList();
  }
}