import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';
import 'package:rhics/Constants/AppColors.dart';
import 'package:rhics/Data/ResponseData.dart';
import 'package:rhics/HomePage/HomePage.dart';
import 'package:rhics/Utils/Navigators.dart';
class BiometricAuthScreen extends StatefulWidget {
  @override
  _BiometricAuthScreenState createState() => _BiometricAuthScreenState();
}

class _BiometricAuthScreenState extends State<BiometricAuthScreen> {

  final LocalAuthentication _localAuthentication = LocalAuthentication();

  bool isAuthenticatedGlobal = false;

  Future<bool> _isBiometricAvailable() async {
    bool isAvailable = false;
    try {
      isAvailable = await _localAuthentication.canCheckBiometrics;
    } on PlatformException catch (e) {
      print(e);
    }

    if (!mounted) return isAvailable;

    isAvailable
        ? print('Biometric is available!')
        : print('Biometric is unavailable.');

    return isAvailable;
  }


  Future<void> _getListOfBiometricTypes() async {
    List<BiometricType> listOfBiometrics;
    try {
      listOfBiometrics = await _localAuthentication.getAvailableBiometrics();
    } on PlatformException catch (e) {
      print(e);
    }

    if (!mounted) return;

    print(listOfBiometrics);
  }


  Future<void> _authenticateUser() async {
    bool isAuthenticated = false;
    try {
      isAuthenticated = await _localAuthentication.authenticateWithBiometrics(
        localizedReason:
        "Please authenticate to view your transaction overview",
        useErrorDialogs: true,
        stickyAuth: true,
      );
    } on PlatformException catch (e) {
      print(e);
    }

    if (!mounted) return;

    isAuthenticated
        ? print('User is authenticated!')
        : print('User is not authenticated.');

    if (isAuthenticated) {

      setState(() {
        isAuthenticatedGlobal = isAuthenticated;
      });
      navigateReplace(context, HomePage());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.colorBlue,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text("Hi, " + ResponseData.loginResponse.login.user.first_name.toString(), style: TextStyle(color: Colors.white, fontFamily: "SF Display Regular", fontSize: 28, fontWeight: FontWeight.bold), ),
              ),



              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text("Tap Below to Verify Identity", style: TextStyle(color: Colors.white, fontFamily: "SF Display Regular", fontSize: 20, fontWeight: FontWeight.bold),),
              ),


              SizedBox(height: 30,),


              isAuthenticatedGlobal ? Container(
                child: Icon(
                  Icons.assignment_turned_in,
                  color: AppColors.colorGreenTwo,
                  size: 85.0,
                ),

              ) : InkWell(
                onTap: ()async{
                  if (await _isBiometricAvailable()) {
                  await _getListOfBiometricTypes();
                  await _authenticateUser();
                  }
                },
                child: Container(child:
                  Column(children: [
                    Icon(
                      Icons.fingerprint,
                      color: AppColors.colorWeirdWhite,
                      size: 85.0,
                    ),

                    SizedBox(height: 30,),

                    Text("or", style: TextStyle(color: Colors.white),),

                    SizedBox(height: 30,),
                    Icon(
                      Icons.face,
                      color: AppColors.colorWeirdWhite,
                      size: 85.0,
                    ),


                  ],),),
              ),
            ],
          ),
        ),
      ),
    );


  }
}
