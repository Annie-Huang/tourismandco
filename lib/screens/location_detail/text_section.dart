import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  final String _title;
  final String _body;

//  TextSection(Color color) {
//    this._color = color;
//  }
  // The below is is shorthand of above
  TextSection(this._title, this._body);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(_title),
        Text(_body),
      ],
    );
  }
}
