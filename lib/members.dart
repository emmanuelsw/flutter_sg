import 'package:flutter/material.dart';

class Members extends StatelessWidget {
  final List<Map<String, dynamic>> members;

  Members(this.members);

  Widget _cardBodyText(index) {
    return Padding(
      padding: EdgeInsets.only(top: 7.0, left: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            members[index]['title'],
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15.0),
          ),
          Text(
            'Sakura Gakuin',
            style: TextStyle(fontStyle: FontStyle.italic, fontSize: 12.0, color: Colors.white),
          )
        ],
      ),
    );
  }

  Widget _detailsButton(BuildContext context, int index) {
    return Padding(
      padding: EdgeInsets.only(right: 8.0),
      child: RaisedButton(
        child: Text('Details'),
        onPressed: () => Navigator.pushNamed<bool>(context, '/member/$index')
      ),
    );
  }

  Widget _buildMemberItem(BuildContext context, int index) {
    return Card(
      color: Colors.pink[800],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(members[index]['image']),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _cardBodyText(index),
              _detailsButton(context, index)
            ],
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
