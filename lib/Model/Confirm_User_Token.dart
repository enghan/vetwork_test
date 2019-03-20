class Confirm_User_Token {
  String countrycode;
  String phonenumber;
  String token;
  String deviceid;

  Confirm_User_Token(
      {this.countrycode, this.phonenumber, this.token, this.deviceid});

  Confirm_User_Token.fromJson(Map<String, dynamic> json) {
    countrycode = json['countrycode'];
    phonenumber = json['phonenumber'];
    token = json['token'];
    deviceid = json['deviceid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['countrycode'] = this.countrycode;
    data['phonenumber'] = this.phonenumber;
    data['token'] = this.token;
    data['deviceid'] = this.deviceid;
    return data;
  }
}