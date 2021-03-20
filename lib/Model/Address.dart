class Addresse {
  String city;
  String country;
  Object landmark;
  String local_government_area;
  String state;
  Object street;
  String type;

  Addresse({this.city, this.country, this.landmark, this.local_government_area, this.state, this.street, this.type});

  factory Addresse.fromJson(Map<String, dynamic> json) {
    return Addresse(
      city: json['city'],
      country: json['country'],
      landmark: json['landmark'],
      local_government_area: json['local_government_area'],
      state: json['state'],
      street: json['street'],
      type: json['type'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['city'] = this.city;
    data['country'] = this.country;
    data['local_government_area'] = this.local_government_area;
    data['state'] = this.state;
    data['type'] = this.type;
    if (this.landmark != null) {
      data['landmark'] = this.landmark;
    }
    if (this.street != null) {
      data['street'] = this.street;
    }
    return data;
  }
}