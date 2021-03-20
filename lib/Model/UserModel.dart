import 'Address.dart';
import 'Nationality.dart';

class User {
  List<Addresse> addresses;
  Object arm_membership_id;
  String date_of_birth;
  String first_name;
  String gender;
  String last_name;
  String marital_status;
  Object middle_name;
  Nationality nationality;
  Object place_of_birth;
  Object title;

  User({this.addresses, this.arm_membership_id, this.date_of_birth, this.first_name, this.gender, this.last_name, this.marital_status, this.middle_name, this.nationality, this.place_of_birth, this.title});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      addresses: json['addresses'] != null ? (json['addresses'] as List).map((i) => Addresse.fromJson(i)).toList() : null,
      arm_membership_id: json['arm_membership_id'],
      date_of_birth: json['date_of_birth'],
      first_name: json['first_name'],
      gender: json['gender'],
      last_name: json['last_name'],
      marital_status: json['marital_status'],
      middle_name: json['middle_name'],
      nationality: json['nationality'] != null ? Nationality.fromJson(json['nationality']) : null,
      place_of_birth: json['place_of_birth'],
      title: json['title'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['date_of_birth'] = this.date_of_birth;
    data['first_name'] = this.first_name;
    data['gender'] = this.gender;
    data['last_name'] = this.last_name;
    data['marital_status'] = this.marital_status;
    if (this.addresses != null) {
      data['addresses'] = this.addresses.map((v) => v.toJson()).toList();
    }
    if (this.arm_membership_id != null) {
      data['arm_membership_id'] = this.arm_membership_id;
    }
    if (this.middle_name != null) {
      data['middle_name'] = this.middle_name;
    }
    if (this.nationality != null) {
      data['nationality'] = this.nationality.toJson();
    }
    if (this.place_of_birth != null) {
      data['place_of_birth'] = this.place_of_birth;
    }
    if (this.title != null) {
      data['title'] = this.title;
    }
    return data;
  }
}