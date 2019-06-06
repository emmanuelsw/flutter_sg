import 'package:flutter/material.dart';

class HeightTag extends StatelessWidget {
  final String height;

  HeightTag(this.height);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.0),
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: Colors.teal
      ),
      child: Text(
        'Height: $height', 
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12.0),
      ),
    );
  }

}