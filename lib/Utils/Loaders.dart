
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:rhics/Constants/AppColors.dart';

final loaderOne = Padding(
  padding: const EdgeInsets.all(18.0),
  child: SpinKitDoubleBounce(
    color: AppColors.colorBlueThree,
    size: 50.0,
  ),
);