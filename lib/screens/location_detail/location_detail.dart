// screens/home/home.dart

// In Dart, import needs to be alphabetical order
import 'package:flutter/material.dart';
import 'image_banner.dart';
import 'text_section.dart';
import '../../models/location.dart';

class LocationDetail extends StatelessWidget {
  final int _locationID;

  LocationDetail(this._locationID);

  @override
  Widget build(BuildContext context) {
//    final locations = Location.fetchAll();
//    final location = locations.first;

    // NOTE: we'll be moving this to a scoped_model later
    final location = Location.fetchByID(_locationID);

    return Scaffold(
      appBar: AppBar(
        title: Text(location.name),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ImageBanner(location.imagePath)
        ]..addAll(textSections(location))
      ),
    );
  }

  List<Widget> textSections(Location location) {
    // when you use =>, it allow you to return a single statement, otherwise, you can use () {} instead
    return location.facts.map((fact) => TextSection(fact.title, fact.text)).toList();
  }
}
