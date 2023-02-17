import 'package:flutter/material.dart';

class sections {
  // String? title;
  String description;
  double progress;

  sections({this.description = '', this.progress = 0.0});

  static List<sections> LecturesList() {
    return [
      sections(
        description: 'Introduction',
        progress: 75 / 100,
      ),
      sections(
        description: 'Food and drinks',
        progress: 80 / 100,
      ),
      sections(
        description: 'LifeStyle',
        progress: 50 / 100,
      ),
      sections(
        description: 'School and Jobs',
        progress: 20 / 100,
      )
    ];
  }
}

class GeneralExercices {
  IconData? icon;
  String? title;
  GeneralExercices({this.icon, this.title});
  static List<GeneralExercices> exercises() {
    return [
      GeneralExercices(
         icon:Icons.menu_book,
         title: 'Grammer'
         ),
      GeneralExercices(
         icon:Icons.mic_none_sharp,
         title: 'Listening'
         ),
      GeneralExercices(
         icon:Icons.note_alt,
         title: 'Notes'
         ),
    ];
  }
}
