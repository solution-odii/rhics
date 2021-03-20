import 'package:flutter/material.dart';
import 'package:rhics/Animations/FadeAnimation.dart';
import 'package:rhics/Constants/AppColors.dart';
import 'package:rhics/Constants/AssetStrings.dart';


class BenchmarkScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [

            SizedBox(
              height: 30,
            ),



            Padding(
              padding: const EdgeInsets.all(26.0),
              child: FadeAnimation(1,

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Asset Allocation",
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 16, fontFamily: "BWNista Regular", color: AppColors.colorWeirdBlue, fontWeight: FontWeight.w800),),

                  ],
                ),

              ),
            ),





            Padding(
              padding: const EdgeInsets.fromLTRB(18.0, 4.0, 18.0, 4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 35,
                    width: 180,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          //     topLeft: Radius.circular(5),
                          // bottomLeft: Radius.circular(5)
                            ),
                        //  border: Border.all(color: Colors.white, width: 2),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Colors.transparent,
                              offset: Offset(2, 4),
                              blurRadius: 5,
                              spreadRadius: 2)
                        ],
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [AppColors.colorPurple, AppColors.colorPurple])
                    ),
                    child:
                      Align(
                        alignment: Alignment.centerLeft,
                          child: Text("  Equities", textAlign: TextAlign.start, style: TextStyle(color: Colors.white, fontFamily: "BWNista Regular", fontSize: 14, fontWeight: FontWeight.bold ),)),



                  ),

                  Container(
                    height: 35,
                    width: 180,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            // topRight: Radius.circular(5),
                            // bottomRight: Radius.circular(5)
                        ),
                        //  border: Border.all(color: Colors.white, width: 2),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Colors.transparent,
                              offset: Offset(2, 4),
                              blurRadius: 5,
                              spreadRadius: 2)
                        ],
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [AppColors.colorWeirdGrey, AppColors.colorWeirdGrey])
                    ),
                    child: Text("40% - 75%", style: TextStyle(color: AppColors.colorWeirdPurple, fontFamily: "BWNista Regular", fontSize: 14, fontWeight: FontWeight.bold ),),

                  ),
              ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.fromLTRB(18.0, 4.0, 18.0, 4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 35,
                    width: 180,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          //     topLeft: Radius.circular(5),
                          // bottomLeft: Radius.circular(5)
                            ),
                        //  border: Border.all(color: Colors.white, width: 2),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Colors.transparent,
                              offset: Offset(2, 4),
                              blurRadius: 5,
                              spreadRadius: 2)
                        ],
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [AppColors.colorPink, AppColors.colorPink])
                    ),
                    child:
                      Align(
                        alignment: Alignment.centerLeft,
                          child: Text("  Real Estate", textAlign: TextAlign.start, style: TextStyle(color: Colors.white, fontFamily: "BWNista Regular", fontSize: 14, fontWeight: FontWeight.bold ),)),



                  ),

                  Container(
                    height: 35,
                    width: 180,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            // topRight: Radius.circular(5),
                            // bottomRight: Radius.circular(5)
                        ),
                        //  border: Border.all(color: Colors.white, width: 2),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Colors.transparent,
                              offset: Offset(2, 4),
                              blurRadius: 5,
                              spreadRadius: 2)
                        ],
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [AppColors.colorWeirdGrey, AppColors.colorWeirdGrey])
                    ),
                    child: Text("0% - 30%", style: TextStyle(color: AppColors.colorWeirdPurple, fontFamily: "BWNista Regular", fontSize: 14, fontWeight: FontWeight.bold ),),

                  ),
              ],
              ),
            ),






            Padding(
              padding: const EdgeInsets.fromLTRB(18.0, 4.0, 18.0, 4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 35,
                    width: 180,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          //     topLeft: Radius.circular(5),
                          // bottomLeft: Radius.circular(5)
                            ),
                        //  border: Border.all(color: Colors.white, width: 2),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Colors.transparent,
                              offset: Offset(2, 4),
                              blurRadius: 5,
                              spreadRadius: 2)
                        ],
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [AppColors.colorYellowOne, AppColors.colorYellowOne])
                    ),
                    child:
                      Align(
                        alignment: Alignment.centerLeft,
                          child: Text("  Fixed Income", textAlign: TextAlign.start, style: TextStyle(color: Colors.white, fontFamily: "BWNista Regular", fontSize: 14, fontWeight: FontWeight.bold ),)),



                  ),

                  Container(
                    height: 35,
                    width: 180,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            // topRight: Radius.circular(5),
                            // bottomRight: Radius.circular(5)
                        ),
                        //  border: Border.all(color: Colors.white, width: 2),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Colors.transparent,
                              offset: Offset(2, 4),
                              blurRadius: 5,
                              spreadRadius: 2)
                        ],
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [AppColors.colorWeirdGrey, AppColors.colorWeirdGrey])
                    ),
                    child: Text("25% - 60%", style: TextStyle(color: AppColors.colorWeirdPurple, fontFamily: "BWNista Regular", fontSize: 14, fontWeight: FontWeight.bold ),),

                  ),
              ],
              ),
            ),





            Padding(
              padding: const EdgeInsets.fromLTRB(18.0, 4.0, 18.0, 4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 35,
                    width: 180,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          //     topLeft: Radius.circular(5),
                          // bottomLeft: Radius.circular(5)
                            ),
                        //  border: Border.all(color: Colors.white, width: 2),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Colors.transparent,
                              offset: Offset(2, 4),
                              blurRadius: 5,
                              spreadRadius: 2)
                        ],
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [AppColors.colorGreen, AppColors.colorGreen])
                    ),
                    child:
                      Align(
                        alignment: Alignment.centerLeft,
                          child: Text("  Cash", textAlign: TextAlign.start, style: TextStyle(color: Colors.white, fontFamily: "BWNista Regular", fontSize: 14, fontWeight: FontWeight.bold ),)),



                  ),

                  Container(
                    height: 35,
                    width: 180,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            // topRight: Radius.circular(5),
                            // bottomRight: Radius.circular(5)
                        ),
                        //  border: Border.all(color: Colors.white, width: 2),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Colors.transparent,
                              offset: Offset(2, 4),
                              blurRadius: 5,
                              spreadRadius: 2)
                        ],
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [AppColors.colorWeirdGrey, AppColors.colorWeirdGrey])
                    ),
                    child: Text("0% - 5%", style: TextStyle(color: AppColors.colorWeirdPurple, fontFamily: "BWNista Regular", fontSize: 14, fontWeight: FontWeight.bold ),),

                  ),
              ],
              ),
            ),








            Padding(
              padding: const EdgeInsets.all(24.0),
              child: FadeAnimation(1,
                Text("The Fund has a composite benchmark comprising 60% Nigerian Stock Exchange All Share Index (NGSEASI) and 40% one year average Treasury Bills yield.",
                  softWrap: true,
                  textScaleFactor: 1.0,
                  style: TextStyle(fontSize: 14, fontFamily: "BWNista Regular", color: AppColors.colorWeirdBlue),),

              ),
            ),








          ],
        ),
      ),
    );
  }
}
