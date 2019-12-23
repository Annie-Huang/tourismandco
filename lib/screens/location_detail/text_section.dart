import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  final Color _color;

//  TextSection(Color color) {
//    this._color = color;
//  }
  // The below is is shorthand of above
  TextSection(this._color);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: _color,
      ),
      child: Text('hi'),
    );
  }
}
