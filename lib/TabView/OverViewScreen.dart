import 'package:flutter/material.dart';
import 'package:rhics/Animations/FadeAnimation.dart';
import 'package:rhics/Constants/AppColors.dart';
import 'package:rhics/Constants/AssetStrings.dart';


class OverViewScreen extends StatelessWidget {
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
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              Text("ARM Aggressive \nGrowth Fund", style: TextStyle(color: Colors.black, fontFamily: "BWNista Regular", fontSize: 16, fontWeight: FontWeight.w600),),
                              SizedBox(height: 15,),
                              Text("Make Smart money choice", style: TextStyle(color: Colors.grey, fontFamily: "BWNista Regular", fontSize: 10, fontWeight: FontWeight.normal),)

                            ],
                          ),
                        ),
                      ),



                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: AppColors.colorPink.withOpacity(.15),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  backgroundColor: AppColors.colorRed,
                                  radius: 15,
                                  child: Image.asset(assetHorse, height: 20, width: 20,),
                                ),
                              ),
                            ),


                            SizedBox(height: 10,),


                            Row(
                              children: [
                              Container(
                                height: 15,
                                decoration: BoxDecoration(
                                  color: AppColors.colorGreenTwo.withOpacity(.15),
                                  borderRadius: BorderRadius.circular(5),
                                ),

                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Row(
                                    children: [
                                      Icon(Icons.arrow_drop_up, color: AppColors.colorGreen, size: 10,),
                                      Text("27%", style: TextStyle(color: AppColors.colorGreen, fontFamily: "SF Display Regular", fontSize: 10),)
                                    ],
                                  ),
                                ),
                              ),

                              SizedBox(width: 2,),

                              Container(
                                height: 15,
                                decoration: BoxDecoration(
                                  color: AppColors.colorPink.withOpacity(.15),
                                  borderRadius: BorderRadius.circular(5),
                                ),

                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Row(
                                    children: [
                                      Text("HIGH RISK", style: TextStyle(color: AppColors.colorRed, fontFamily: "SF Display Regular", fontSize: 8),)
                                    ],
                                  ),
                                ),
                              ),

                            ],
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),



              SizedBox(
                height: 10,
              ),

              Padding(
                padding: const EdgeInsets.all(18.0),
                child: FadeAnimation(1,
                  Text("The ARM Aggressive Growth Fund is suitable for investors who want high capital growth over the long term to meet objectives such as education funding, property acquisition or leaving a legacy for loved ones.",

                    style: TextStyle(fontSize: 14, fontFamily: "BWNista Regular", color: AppColors.colorWeirdBlue),),

                ),
              ),




              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.colorBlueThree,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                    ),
                  ),
                  child:
                  Padding(
                    padding: const EdgeInsets.fromLTRB(18.0, 24.0,18.0, 24.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("N50,000", style: TextStyle(color: AppColors.colorBlueFour, fontFamily: "BWNista Regular", fontSize: 14, fontWeight: FontWeight.bold),),
                              SizedBox(height: 5,),
                              Text("Min. Initial Investment", style: TextStyle(color: Colors.grey, fontFamily: "BWNista Regular", fontSize: 10, fontWeight: FontWeight.normal),)
                            ],
                          ),
                        ),


                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("N10,000", style: TextStyle(color: AppColors.colorBlueFour, fontFamily: "BWNista Regular", fontSize: 14, fontWeight: FontWeight.bold),),
                              SizedBox(height: 5,),
                              Text("Min. Additional Investment", style: TextStyle(color: Colors.grey, fontFamily: "BWNista Regular", fontSize: 10, fontWeight: FontWeight.normal),)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),







              SizedBox(
                height: 10,
              ),

              Padding(
                padding: const EdgeInsets.all(18.0),
                child: FadeAnimation(1,

                  Text("Current AGF Price",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14, fontFamily: "Blacker Display", color: AppColors.colorWeirdBlue, fontWeight: FontWeight.w800),),

                ),
              ),





              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 18.0, 0.0, 24.0),
                child: IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Bid", style: TextStyle(color: Colors.grey, fontFamily: "BWNista Regular", fontSize: 10, fontWeight: FontWeight.normal),),
                            SizedBox(height: 5,),
                            Text("18.846", style: TextStyle(color: AppColors.colorBlue, fontFamily: "BWNista Regular", fontSize: 14, fontWeight: FontWeight.bold),),

                          ],
                        ),
                      ),


                      VerticalDivider(color: AppColors.colorBlue,),

                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Offer", style: TextStyle(color: Colors.grey, fontFamily: "BWNista Regular", fontSize: 10, fontWeight: FontWeight.normal),),
                            SizedBox(height: 5,),
                            Text("19.414", style: TextStyle(color: AppColors.colorBlue, fontFamily: "BWNista Regular", fontSize: 14, fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),


                      VerticalDivider(color: AppColors.colorBlue,),


                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Equity", style: TextStyle(color: Colors.grey, fontFamily: "BWNista Regular", fontSize: 10, fontWeight: FontWeight.normal),),
                            SizedBox(height: 5,),
                            Text("80%-100%", style: TextStyle(color: AppColors.colorBlue, fontFamily: "BWNista Regular", fontSize: 14, fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),





              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  height: 50,
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
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
                          colors: [AppColors.colorBlue, AppColors.colorBlue])
                  ),
                  child: Text("Invest", style: TextStyle(color: Colors.white, fontFamily: "BWNista Regular", fontSize: 14, fontWeight: FontWeight.bold ),),

                ),
              ),




            ],
          ),
        ),
    );
  }
}
