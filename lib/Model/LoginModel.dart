import 'BvnModel.dart';
import 'TokenModel.dart';
import 'UserAccount.dart';
import 'UserModel.dart';

class Login {
  Bvn bvn;
  Token token;
  User user;
  UserAccount user_account;

  Login({this.bvn, this.token, this.user, this.user_account});

  factory Login.fromJson(Map<String, dynamic> json) {
    return Login(
      bvn: json['bvn'] != null ? Bvn.fromJson(json['bvn']) : null,
      token: json['token'] != null ? Token.fromJson(json['token']) : null,
      user: json['user'] != null ? User.fromJson(json['user']) : null,
      user_account: json['user_account'] != null ? UserAccount.fromJson(json['user_account']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.bvn != null) {
      data['bvn'] = this.bvn.toJson();
    }
    if (this.token != null) {
      data['token'] = this.token.toJson();
    }
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    if (this.user_account != null) {
      data['user_account'] = this.user_account.toJson();
    }
    return data;
  }
}