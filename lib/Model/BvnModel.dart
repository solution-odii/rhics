
class Bvn {
  String bvn;
  bool is_verified;

  Bvn({this.bvn, this.is_verified});

  factory Bvn.fromJson(Map<String, dynamic> json) {
    return Bvn(
      bvn: json['bvn'],
      is_verified: json['is_verified'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['bvn'] = this.bvn;
    data['is_verified'] = this.is_verified;
    return data;
  }
}