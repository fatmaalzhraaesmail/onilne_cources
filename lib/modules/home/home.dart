import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:online_cources/cubit/cubit.dart';
import 'package:online_cources/cubit/state.dart';
import 'package:online_cources/models/sectionsModel.dart';
import 'package:online_cources/shared/component/component.dart';
class HomePage extends StatefulWidget {
  final List ProducttList = sections.LecturesList();

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
          stackcomponent('images/p3.jpg', 170, 'English',' Course Content', MediaQuery.of(context).size.width - 40,BoxFit.cover,90,40),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Main units',
                style: TextStyle(
                    color: HexColor('fa3d53'),
                    fontWeight: FontWeight.w800,
                    fontSize: 20),
              ),
            ),
            
            BlocProvider(
                create: (BuildContext context) => AppCubit(),
                child: BlocConsumer<AppCubit, AppStates>(
                    listener: (BuildContext context, AppStates state) {},
                    builder: (BuildContext context, AppStates state) {
                      AppCubit cubit = AppCubit.get(context);
                      return Container(
                        height: 350,
                        child: ListView.builder(
      
                            scrollDirection: Axis.vertical,
      //                    physics: ,
                            itemCount: cubit.seccccc.length,
      
                            itemBuilder: (context,index)=>_bulidProduct(context,cubit.seccccc[index], index)),
      
      
                      );
                    })),
            // unit('fa3d53', '1', 'Introduction', 50 / 100)
      
             SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'General Exercises',
                style: TextStyle(
                    color: HexColor('fa3d53'),
                    fontWeight: FontWeight.w800,
                    fontSize: 20),
              ),
            ),
             SizedBox(
              height: 15,
            ),
            BlocProvider(
                create: (BuildContext context) => AppCubit(),
                child: BlocConsumer<AppCubit, AppStates>(
                    listener: (BuildContext context, AppStates state) {},
                    builder: (BuildContext context, AppStates state) {
                      AppCubit cubit = AppCubit.get(context);
                      return Container(
                        height: 50,
                        child: ListView.builder(
      
                            scrollDirection: Axis.horizontal,
      //                    physics: ,
                            itemCount: cubit.exe.length,
      
                            itemBuilder: (context,index)=>_buildexercises(context,cubit.exe[index], index)),
      
      
                      );
                    })),
          ],
        ),
      ),
    );
  }

  Widget _bulidProduct(BuildContext context,sections sec,int index) {
    return Column(
      children: [
         unit(index%2==1?'f9b7ab':'fa3d53', (index+1).toString(), sec.description, sec.progress)
      ],
    );
  }
  Widget _buildexercises(BuildContext context,GeneralExercices exercices,int index,) {
    return Column(
      children: [
         generalexercises(index%2==1?'f9b7ab':'fa3d53',exercices.icon!,exercices.title!,(){} )
      ],
    );
  }
}
