import 'package:flutter/material.dart';

class MemberCard extends StatelessWidget {
  final Map<String, dynamic> member;
  final int memberIndex;

  MemberCard(this.member, this.memberIndex);

  Widget _cardBodyText(index) {
    return Padding(
      padding: EdgeInsets.only(top: 7.0, left: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            member['title'],
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

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.pink[800],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(member['image']),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _cardBodyText(memberIndex),
              _detailsButton(context, memberIndex)
            ],
          ),
        ],
      ),
    );
  }
}