import 'package:flutter/material.dart';

class Members extends StatelessWidget {
  final List<String> members;

  Members(this.members);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: members
        .map((element) => Card(
            child: Column(
              children: <Widget>[
                Image.asset('assets/rinon.jpg'),
                Text(element)
              ],
            ),
          ))
        .toList(),
    );
  }
}
