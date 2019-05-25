import 'package:flutter/material.dart';

class Members extends StatelessWidget {
  final List<String> members;

  Members(this.members);

  Widget _buildMemberItem(BuildContext context, int index) {
    return Card(
      color: Colors.pink[800],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/rinon.jpg'),
          Padding(
            padding: EdgeInsets.only(top: 5.0, left: 7.0, bottom: 5.0),
            child: Text(
              members[index],
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMemberList() {
    Widget memberCards;

    if (members.length > 0) {
      memberCards = ListView.builder(
        itemBuilder: _buildMemberItem,
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
