import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:online_cources/modules/home/home.dart';
import 'package:online_cources/shared/component/component.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        stackcomponent('images/welcom.jpg', 480, '', 'East and \nquick\nLearn \nEnglish \nonline!', MediaQuery.of(context).size.width - 40,BoxFit.fitHeight,20,55),
          SizedBox(
            height: 40,
          ),
          Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
             
                    onPressed: () => Navigator.pushReplacement(
                        (context),
                        MaterialPageRoute(
                            builder: (context) => HomePage())),
                    child: defaultButton(
                      text: "START",
                      color: HexColor('fbb6a7'),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MaterialButton(
                    onPressed: () => Navigator.pushReplacement(
                        (context),
                        MaterialPageRoute(
                            builder: (context) => HomePage())),
                 
                    child: defaultButton(
                      text: "SIGN UP",
                      color: HexColor('ff3a56'),
                    ),
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
