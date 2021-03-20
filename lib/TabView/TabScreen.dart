import 'package:flutter/material.dart';
import 'package:rhics/Constants/AppColors.dart';
import 'package:rhics/TabView/BenchmarkScreen.dart';
import 'package:rhics/TabView/KeyFactScreen.dart';
import 'package:rhics/TabView/OverViewScreen.dart';
import 'package:rhics/TabView/StructureScreen.dart';
import 'package:rhics/Utils/Navigators.dart';

class TabScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
        length: 4,
        child: new Scaffold(
          backgroundColor: Colors.white,
          body: new NestedScrollView(
              headerSliverBuilder:
                  (BuildContext context, bool innerBoxIsScrolled) {
                return <Widget>[
                  new SliverAppBar(
                    backgroundColor: Colors.white,
                    shadowColor: Colors.grey,
                    elevation: 8,
                    leading: InkWell(
                      onTap: (){
                        navigateBack(context);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.colorBlueThree,
                            borderRadius: BorderRadius.all(Radius.circular(35)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Icon(
                              Icons.arrow_back,
                              size: 20,
                              color: AppColors.colorBlue,
                            ),
                          ),
                        ),
                      ),
                    ),
                    forceElevated: true,
                    snap: false,
                    pinned: false,
                    floating: false,
                    bottom: new TabBar(
                        labelColor: Colors.grey[800],
                        indicatorColor: AppColors.colorBlueTwo,
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicatorWeight: 2.5,
                        tabs: <Tab>[
                          new Tab(text: "Overview"),
                          new Tab(text: "Structure"),
                          new Tab(text: "Benchmark"),
                          new Tab(text: "Key Facts"),
                        ]),
                  )
                ];
              },
              body: new TabBarView(
                children: <Widget>[
                  new OverViewScreen(),
                  new StructureScreen(),
                  new BenchmarkScreen(),
                  new KeyFactScreen(),
                ],
              )),
        ));
    // TODO: implement build
  }
}
