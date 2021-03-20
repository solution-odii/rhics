import 'package:rhics/Model/ErrorModel.dart';

class ResponseModel {
    Object data;
    List<Error> errors;
    String response_code;
    String response_message;
    String status;

    ResponseModel({this.data, this.errors, this.response_code, this.response_message, this.status});

    factory ResponseModel.fromJson(Map<String, dynamic> json) {
        return ResponseModel(
            data: json['data'],
            errors: json['errors'] != null ? (json['errors'] as List).map((i) => Error.fromJson(i)).toList() : null,
            response_code: json['response_code'],
            response_message: json['response_message'],
            status: json['status'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['response_code'] = this.response_code;
        data['response_message'] = this.response_message;
        data['status'] = this.status;
        if (this.data != null) {
            data['data'] = this.data;
        }
        if (this.errors != null) {
            data['errors'] = this.errors.map((v) => v.toJson()).toList();
        }
        return data;
    }
}











