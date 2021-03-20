class UserAccount {
  String date_created;
  String email;
  String engage_id;
  bool is_email_confirmed;
  bool is_locked_out;
  bool is_onboarding_complete;
  bool is_phone_number_confirmed;
  int locked_out_count;
  String phone_number;
  String user_type;
  String username;

  UserAccount({this.date_created, this.email, this.engage_id, this.is_email_confirmed, this.is_locked_out, this.is_onboarding_complete, this.is_phone_number_confirmed, this.locked_out_count, this.phone_number, this.user_type, this.username});

  factory UserAccount.fromJson(Map<String, dynamic> json) {
    return UserAccount(
      date_created: json['date_created'],
      email: json['email'],
      engage_id: json['engage_id'],
      is_email_confirmed: json['is_email_confirmed'],
      is_locked_out: json['is_locked_out'],
      is_onboarding_complete: json['is_onboarding_complete'],
      is_phone_number_confirmed: json['is_phone_number_confirmed'],
      locked_out_count: json['locked_out_count'],
      phone_number: json['phone_number'],
      user_type: json['user_type'],
      username: json['username'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['date_created'] = this.date_created;
    data['email'] = this.email;
    data['engage_id'] = this.engage_id;
    data['is_email_confirmed'] = this.is_email_confirmed;
    data['is_locked_out'] = this.is_locked_out;
    data['is_onboarding_complete'] = this.is_onboarding_complete;
    data['is_phone_number_confirmed'] = this.is_phone_number_confirmed;
    data['locked_out_count'] = this.locked_out_count;
    data['phone_number'] = this.phone_number;
    data['user_type'] = this.user_type;
    data['username'] = this.username;
    return data;
  }
}