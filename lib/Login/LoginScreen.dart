import 'package:flutter/material.dart';
import 'package:rhics/Animations/FadeAnimation.dart';
import 'package:rhics/Backend/LoginBackend.dart';
import 'package:rhics/Constants/AppColors.dart';
import 'package:rhics/Dto/LoginDto.dart';
import 'package:rhics/Utils/AlertDialogs.dart';
import 'package:rhics/Utils/BezierContainer.dart';
import 'package:rhics/Utils/Loaders.dart';



class LoginScreen extends StatefulWidget {

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = new TextEditingController();

  var passwordController = new TextEditingController();

  bool loading = false;

  bool _obscureText = true;


  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }



  _proceedToLogin() async{
    if(emailController.text.isEmpty || !emailController.text.contains("@")){
      showErrorAlertMessage(context, "Please Enter Email Address");
    }else if (passwordController.text.isEmpty){
      showErrorAlertMessage(context, "Please Enter Valid Password");
    }else{

      setState(() {
        loading = true;
      });

      LoginDto loginDto = new LoginDto(email: emailController.text, password: passwordController.text);

      try {
        await LoginBackend().signIn(context, loginDto);
      }catch (e){
        setState(() {
          loading = false;
        });
        showErrorAlertMessage(context, "Login Failed, Please try again");
      }


      setState(() {
        loading = false;
      });


    }
  }
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 400,

                  child: Stack(
                    children: <Widget>[

                      Positioned(
                          top: -height * .15,
                          right: -MediaQuery.of(context).size.width * .4,
                          child: BezierContainer()),

                      Positioned(
                        left: 30,
                        width: 80,
                        height: 200,
                        child: FadeAnimation(1, Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/light-1.png')
                              )
                          ),
                        )),
                      ),
                      Positioned(
                        left: 140,
                        width: 80,
                        height: 150,
                        child: FadeAnimation(1.3, Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/light-2.png')
                              )
                          ),
                        )),
                      ),
                      Positioned(
                        right: 40,
                        top: 40,
                        width: 80,
                        height: 150,
                        child: FadeAnimation(1.5, Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/clock.png')
                              )
                          ),
                        )),
                      ),
                      Positioned(
                        child: FadeAnimation(1.6, Container(
                          margin: EdgeInsets.only(top: 50),
                          child: Center(
                            child: Text("Login", style: TextStyle(color: AppColors.colorBlueTwo, fontSize: 40, fontWeight: FontWeight.bold),),
                          ),
                        )),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    children: <Widget>[
                      FadeAnimation(1.8, Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(143, 148, 251, .2),
                                  blurRadius: 20.0,
                                  offset: Offset(0, 10)
                              )
                            ]
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey[100]))
                              ),
                              child: TextField(
                                controller: emailController,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Email",
                                    hintStyle: TextStyle(color: Colors.grey[400])
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(8.0),
                              child: TextField(
                                obscureText: _obscureText,
                                controller: passwordController,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Password",
                                    hintStyle: TextStyle(color: Colors.grey[400]),
                                  suffixIcon: InkWell(
                                      onTap: (){
                                        _toggle();
                                      },
                                      child: _obscureText? Icon(Icons.visibility_off, color: Colors.grey,) : Icon(Icons.visibility, color: Colors.grey,)),
                                ),
                              ),
                            )
                          ],
                        ),
                      )),
                      SizedBox(height: 30,),


                      loading ? loaderOne :
                      InkWell(
                        onTap: (){
                          _proceedToLogin();
                        },
                        child: FadeAnimation(2, Container(
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              gradient: LinearGradient(
                                  colors: [
                                    AppColors.colorBlue,
                                    AppColors.colorBlue,
                                  ]
                              )
                          ),
                          child: Center(
                            child: Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                          ),
                        )),
                      ),
                      SizedBox(height: 70,),
                      FadeAnimation(1.5, Text("Forgot Password?", style: TextStyle(color: Color.fromRGBO(143, 148, 251, 1)),)),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}