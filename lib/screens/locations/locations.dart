import 'package:flutter/material.dart';
import '../../app.dart';
import '../../models/location.dart';

class Locations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // NOTE: we'll be moving this to a scoped_model later
    final locations = Location.fetchAll();

    // GestureDetector class
    // A widget that detects gestures.
    // Attempts to recognize gestures that correspond to its non-null callbacks.
    return Scaffold(
      appBar: AppBar(
        title: Text('Locations'),
      ),
      body: ListView(
        children: locations
            .map((location) => GestureDetector(
              child: Text(location.name),
              onTap: () => _onLocationTap(context, location.id),
            ))
            .toList(),
      ),
    );
  }
}
