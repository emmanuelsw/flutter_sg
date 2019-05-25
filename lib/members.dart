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
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return members.length > 0 ? ListView.builder(
      itemBuilder: _buildMemberItem,
      itemCount: members.length,
    ) : Center(child: Text('No members found, please add some.'),);
  }
}
