import 'package:flutter/material.dart';
import 'package:rhics/Animations/FadeAnimation.dart';
import 'package:rhics/Constants/AppColors.dart';
import 'package:rhics/Constants/AssetStrings.dart';


class KeyFactScreen extends StatelessWidget {
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
              child: FadeAnimation(1,
                Text("The Fund seeks to maximize return by investing in a broad spectrum of assets classes that comprises of equities, fixed income and real estate. The Fund’s aims at deriving long term value through selecting assets with intrinsic value, through exhaustive research that combines a top bottom macroeconomic review and bottom up security selection. The Fund is suitable for investors with moderate risk tolerance level and requires regular income. It’s appropriate for investors with a near to long term investment horizon of at least three to five years.",
                  softWrap: true,
                    textScaleFactor: 1.0,
                  style: TextStyle(fontSize: 16, fontFamily: "BWNista Regular", color: AppColors.colorWeirdBlue),),

              ),
            ),








          ],
        ),
      ),
    );
  }
}
