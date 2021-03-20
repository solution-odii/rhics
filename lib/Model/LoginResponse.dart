

import 'LoginModel.dart';

class LoginResponse {
    Login login;

    LoginResponse({this.login});

    factory LoginResponse.fromJson(Map<String, dynamic> json) {
        return LoginResponse(
            login: json['login'] != null ? Login.fromJson(json['login']) : null,
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        if (this.login != null) {
            data['login'] = this.login.toJson();
        }
        return data;
    }
}