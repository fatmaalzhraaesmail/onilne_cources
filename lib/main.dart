import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:online_cources/modules/home/home.dart';
import 'package:online_cources/modules/login/splash.dart';
import 'package:online_cources/modules/login/welcome.dart';
import 'package:online_cources/shared/style/style.dart';

import 'cubit/cubit_observer.dart';

void main() async {
  Bloc.observer = MyBlocObserver();
  runApp(
    GraduationProject(),
  );
}

class GraduationProject extends StatefulWidget {
  const GraduationProject({super.key});

  @override
  State<GraduationProject> createState() => _GraduationProjectState();
}

class _GraduationProjectState extends State<GraduationProject> {
  @override
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
