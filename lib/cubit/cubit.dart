import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:online_cources/cubit/state.dart';
import 'package:online_cources/modules/home/home.dart';
import 'package:online_cources/layout/notivigation.dart';
import 'package:online_cources/layout/profile.dart';
import 'package:online_cources/models/sectionsModel.dart';
class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(sectionsState());
  static AppCubit get(context) => BlocProvider.of(context);
  final List seccccc = sections.LecturesList();
  final List exe = GeneralExercices.exercises();
}
