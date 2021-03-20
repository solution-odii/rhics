import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as Client;
import 'package:logger/logger.dart';
import 'package:rhics/Constants/APIs.dart';
import 'package:rhics/Constants/Strings.dart';
import 'package:rhics/Data/ResponseData.dart';
import 'package:rhics/Dto/LoginDto.dart';
import 'package:rhics/HomePage/HomePage.dart';
import 'package:rhics/Login/BiometricAuthScreen.dart';
import 'package:rhics/Login/LoginScreen.dart';
import 'package:rhics/Model/LoginResponse.dart';
import 'package:rhics/Model/ResponseModel.dart';
import 'package:rhics/Utils/AlertDialogs.dart';
import 'package:rhics/Utils/Navigators.dart';


class LoginBackend {

  var logger = Logger(
      printer: PrettyPrinter(
        colors: true,
        printEmojis: true,
        printTime: true,
      )
  );

  Future<void> signIn(BuildContext context, LoginDto loginDto) async {
    final url = HTTP + BASE_URL + LOGIN_PATH;

    logger.i(url);

    logger.i(json.encode({

      "email": loginDto.email.trim(),
      "password": loginDto.password.trim(),

    }));

    try {
      final httpConnectionApi = await Client.post(
        url,
        headers: {HttpHeaders.contentTypeHeader: 'application/json'},
        body: json.encode({
          "email": loginDto.email.trim(),
          "password": loginDto.password.trim(),

        }),

      ).timeout(const Duration(seconds: 60));

      logger.i(httpConnectionApi.statusCode);
      logger.i(httpConnectionApi.body);

      if (httpConnectionApi.statusCode == 200) {
        var resBody = jsonDecode(httpConnectionApi.body.toString());
        ResponseData.responseModel = ResponseModel.fromJson(resBody);
        if (ResponseData.responseModel.response_code == "S24") {
          ResponseData.loginResponse =
              LoginResponse.fromJson(ResponseData.responseModel.data);

          
          navigateReplace(context, BiometricAuthScreen());



        }
        else
          showErrorAlertMessage(context, ResponseData.responseModel.response_message);
      } else if (httpConnectionApi.statusCode == 500) {
        var resBody = jsonDecode(httpConnectionApi.body.toString());
        ResponseData.responseModel = ResponseModel.fromJson(resBody);
        showErrorAlertMessage(context, ResponseData.responseModel.response_message.toString());
      } else if (httpConnectionApi.statusCode == 400) {
        var resBody = jsonDecode(httpConnectionApi.body.toString());
        ResponseData.responseModel = ResponseModel.fromJson(resBody);
        showErrorAlertMessage(context, ResponseData.responseModel.errors[0].message.toString());
      } else if (httpConnectionApi.statusCode == 422) {
        var resBody = jsonDecode(httpConnectionApi.body.toString());
        ResponseData.responseModel = ResponseModel.fromJson(resBody);
        showErrorAlertMessage(context, ResponseData.responseModel.errors[0].message.toString());
      } else if (httpConnectionApi.statusCode == 401) {
        var resBody = jsonDecode(httpConnectionApi.body.toString());
        ResponseData.responseModel = ResponseModel.fromJson(resBody);
        showErrorAlertMessage(context, ResponseData.responseModel.response_message.toString());
      } else if (httpConnectionApi.statusCode == 404) {
        var resBody = jsonDecode(httpConnectionApi.body.toString());
        ResponseData.responseModel = ResponseModel.fromJson(resBody);
        showErrorAlertMessage(context, ResponseData.responseModel.response_message.toString());
      } else
        showErrorAlertMessage(context, somethingWentWrongText);
    } on Exception catch (e) {
      showErrorAlertMessage(context, somethingWentWrongText);
      print(e);
      throw e;
    }
  }

}