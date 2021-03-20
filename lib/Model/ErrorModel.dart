
class Error {
    String code;
    String message;

    Error({this.code, this.message});

    factory Error.fromJson(Map<String, dynamic> json) {
        return Error(
            code: json['code'],
            message: json['message'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['code'] = this.code;
        data['message'] = this.message;
        return data;
    }
}