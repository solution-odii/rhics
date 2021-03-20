class Token {
  String auth_token;
  double expires_in;
  String refresh_token;

  Token({this.auth_token, this.expires_in, this.refresh_token});

  factory Token.fromJson(Map<String, dynamic> json) {
    return Token(
      auth_token: json['auth_token'],
      expires_in: json['expires_in'],
      refresh_token: json['refresh_token'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['auth_token'] = this.auth_token;
    data['expires_in'] = this.expires_in;
    data['refresh_token'] = this.refresh_token;
    return data;
  }
}