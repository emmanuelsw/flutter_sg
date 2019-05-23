import 'package:flutter/material.dart';

class Members extends StatelessWidget {
  final List<String> members;

  Members(this.members);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: members
        .map((element) => Card(
          color: Colors.pink[800],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/rinon.jpg'),
                Padding(
                  padding: EdgeInsets.only(top: 5.0, left: 7.0, bottom: 5.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        element,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ))
        .toList(),
    );
  }
}
