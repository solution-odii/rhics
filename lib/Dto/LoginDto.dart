class LoginDto {
    String email;
    String username;
    String password;
    String phoneNumber;

    LoginDto({this.email, this.username, this.password, this.phoneNumber});

    factory LoginDto.fromJson(Map<String, dynamic> json) {
        return LoginDto(
            email: json['email'],
            username: json['username'],
            password: json['password'],
            phoneNumber: json['phoneNumber'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['email'] = this.email;
        data['username'] = this.username;
        data['password'] = this.password;
        data['phoneNumber'] = this.phoneNumber;
        return data;
    }
}