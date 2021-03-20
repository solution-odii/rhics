class Nationality {
  Object city;
  String country;
  String identification_number;
  String local_government_area;
  String state;

  Nationality({this.city, this.country, this.identification_number, this.local_government_area, this.state});

  factory Nationality.fromJson(Map<String, dynamic> json) {
    return Nationality(
      city: json['city'],
      country: json['country'],
      identification_number: json['identification_number'],
      local_government_area: json['local_government_area'],
      state: json['state'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['country'] = this.country;
    data['identification_number'] = this.identification_number;
    data['local_government_area'] = this.local_government_area;
    data['state'] = this.state;
    if (this.city != null) {
      data['city'] = this.city;
    }
    return data;
  }
}