import 'package:flutter/material.dart';

Widget newNoteButton () {
  return FloatingActionButton(
    onPressed: () {
      print('New voice note');
    },
    tooltip: 'New Voice Note',
    child: Icon(Icons.mic),
  );
}
