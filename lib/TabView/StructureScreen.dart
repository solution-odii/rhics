import 'package:flutter/material.dart';
import 'package:rhics/Animations/FadeAnimation.dart';
import 'package:rhics/Constants/AppColors.dart';
import 'package:rhics/Graph/TimeSeriesBarChart.dart';


class StructureScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
          child: Column(
            children: [


              SizedBox(
                height: 30,
              ),



            Container(
              height: 400,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                //gradient: LinearGradient(colors: [AppColors.color5, AppColors.color1]),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    Expanded(child: TimeSeriesBar.withSampleData(),),

                  ],
                ),

//
              ),
            ),





              Padding(
                padding: const EdgeInsets.all(26.0),
                child: FadeAnimation(1,

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("About Fund",
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 16, fontFamily: "BWNista Regular", color: AppColors.colorWeirdBlue, fontWeight: FontWeight.w800),),

                    ],
                  ),

                ),
              ),



              Padding(
                padding: const EdgeInsets.all(24.0),
                child: FadeAnimation(1,
                  Text("The ARM Discovery Fund’s investment objective is to provide capital growth primarily through investments in equity, real estate and fixed income securities in the Nigerian market. The Fund Manager maintains a minimum equity position of 40% and a maximum of 75%. It is not the objective of the Fund to replicate the performance of the Nigerian equity market; rather, it has a primary objective to deliver real returns over the long term.",
                    softWrap: true,
                    textScaleFactor: 1.0,
                    style: TextStyle(fontSize: 14, fontFamily: "BWNista Regular", color: AppColors.colorWeirdBlue),),

                ),
              ),







            ],
          ),
        ));
  }
}
