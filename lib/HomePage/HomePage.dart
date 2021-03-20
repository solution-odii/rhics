import 'package:flutter/material.dart';
import 'package:rhics/Animations/FadeAnimation.dart';
import 'package:rhics/Constants/AppColors.dart';
import 'package:rhics/Constants/AssetStrings.dart';
import 'package:rhics/TabView/TabScreen.dart';
import 'package:rhics/Utils/Navigators.dart';

class HomePage extends StatefulWidget {
@override
_HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(

        // crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          Container(),
          Container(
            height: 150,
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      colors: [
                        AppColors.colorBlue,
                        AppColors.colorBlue,
                      ]
                  )
              ),

            ),
          ),

          Positioned(
            top: 30,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[

                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.colorBlueThree,
                        borderRadius: BorderRadius.all(Radius.circular(35)),

                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.arrow_back, size: 20, color: AppColors.colorBlue,),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),


          Positioned(
            top: 120,
            left: 15,
            right: 0,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    child: Container(
                      // width: 320,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[

                          FadeAnimation(1.3, Container(
                            padding: EdgeInsets.symmetric(vertical: 6),
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            height: 60,
                            width: 270,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                              color: Colors.white,
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: Icon(Icons.search, color: Colors.grey,),
                                  hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                                  hintText: "Search Investment Solution"
                              ),
                            ),
                          )),

                        ],
                      ),
                    ),
                  ),



                  FadeAnimation(1.3, Card(
                      //
                      // height: 50,
                      // width: 50,
                      // decoration: BoxDecoration(
                      //   borderRadius: BorderRadius.only(
                      //     topLeft: Radius.circular(10),
                      //     topRight: Radius.circular(10),
                      //     bottomLeft: Radius.circular(10),
                      //     bottomRight: Radius.circular(10),
                      //   ),
                      //   color: Colors.white,
                      // ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Icon(Icons.menu, size: 40,),
                      )
                  )),
              ],
              ),
            ),

          ),


          Positioned(
            top: 220,
            left: 0,
            right: 0,
            child: Container(
              height: height * 0.70,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ListView(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  FadeAnimation(1,
                      Text("Our Recommendations", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[800], fontSize: 16),),

                  ),
                  SizedBox(height: 20,),
                  FadeAnimation(1.4, Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        makeItem(imageOne: assetFundMark, imageTwo: assetHorse, title: "Money Market Fund"),
                        makeItem(imageOne: assetRect, imageTwo: assetHorse, title: "Money Market Fund")

                      ],
                    ),
                  )),

                  SizedBox(height: 40,),
                  FadeAnimation(1,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Investment Categories", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[800], fontSize: 16),),
                        Text("See all", style: TextStyle(fontWeight: FontWeight.w600, color: AppColors.colorGreen, fontSize: 16, fontFamily: "SF Display Regular"),),

                      ],),
                  ),
                  SizedBox(height: 20,),
                  FadeAnimation(1.4, Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        makeItem(imageOne: assetRect, imageTwo: assetHorse, title: "Money Market Fund"),
                        makeItem(imageOne: assetFundMark, imageTwo: assetHorse, title: "Money Market Fund")

                      ],
                    ),
                  )),


                  SizedBox(height: 40,),
                  FadeAnimation(1,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Other Solutions", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[800], fontSize: 16),),
                        Text("See all", style: TextStyle(fontWeight: FontWeight.w600, color: Colors.grey[800], fontSize: 16, fontFamily: "SF Display Regular"),),

                      ],),
                  ),
                  SizedBox(height: 20,),
                  FadeAnimation(1.4, Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        makeItem(imageOne: assetFundMark, imageTwo: assetHorse, title: "Money Market Fund"),
                        makeItem(imageOne: assetRect, imageTwo: assetHorse, title: "Money Market Fund")

                      ],
                    ),
                  )),
                  SizedBox(height: 80,),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget makeItem({imageOne, imageTwo, title}) {
    return InkWell(
      onTap: (){
        navigatePush(context, TabScreen());

      },
      child: AspectRatio(
        aspectRatio: 1.8 / 1,
        child: Container(
          width: 200,
          color: AppColors.colorWeirdWhite,
          margin: EdgeInsets.only(right: 15),
          child: Column(
            children: [
              Container(
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),
                  ),
                  image: DecorationImage(
                    image: AssetImage(imageOne),

                    fit: BoxFit.cover,
                  ),
                ),
              ),


             Padding(
               padding: const EdgeInsets.fromLTRB(18.0, 10.0,18.0, 0.0),
               child: Row(
                 children: [
                   Container(
                     decoration: BoxDecoration(
                       shape: BoxShape.circle,
                       color: AppColors.colorBlueThree,
                     ),
                     child: Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: CircleAvatar(
                         backgroundColor: AppColors.colorBlue,
                         radius: 15,
                         child: Image.asset(imageTwo, height: 20, width: 20,),
                       ),
                     ),
                   ),

                   SizedBox(width: 10,),
                   Container(
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       Text(title, style: TextStyle( fontFamily: "SF Display Regular", fontSize: 14, fontWeight: FontWeight.bold),),

                       SizedBox(
                         height: 5,
                       ),
                       Row(children: [
                         Container(
                           height: 15,
                           decoration: BoxDecoration(
                             color: AppColors.colorGreenTwo.withOpacity(.15),
                             borderRadius: BorderRadius.circular(10),
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
                             borderRadius: BorderRadius.circular(10),
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
                   ),),
                 ],
               ),
             ),



              Padding(
                padding: const EdgeInsets.fromLTRB(18.0, 18.0,18.0, 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("1.50", style: TextStyle(color: Colors.black, fontFamily: "BWNista Regular", fontSize: 12, fontWeight: FontWeight.w600),),
                          SizedBox(height: 5,),
                          Text("Management Fee", style: TextStyle(color: Colors.grey, fontFamily: "BWNista Regular", fontSize: 10, fontWeight: FontWeight.normal),)
                        ],
                      ),
                    ),


                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("N50,000", style: TextStyle(color: AppColors.colorGreen, fontFamily: "BWNista Regular", fontSize: 12, fontWeight: FontWeight.w600),),
                          SizedBox(height: 5,),
                          Text("Minimum Investment", style: TextStyle(color: Colors.grey, fontFamily: "BWNista Regular", fontSize: 10, fontWeight: FontWeight.normal),)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),


        ),
      ),
    );
  }
}



//
// Container(
// padding: EdgeInsets.all(20),
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(20),
// gradient: LinearGradient(
// begin: Alignment.bottomRight,
// colors: [
// Colors.black.withOpacity(.8),
// Colors.black.withOpacity(.2),
// ]
// )
// ),
// child: Align(
// alignment: Alignment.bottomLeft,
// child: Text(title, style: TextStyle(color: Colors.white, fontSize: 20),),
// ),
// ),