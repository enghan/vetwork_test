class Verify_User_Request {
  String countrycode;
  String phonenumber;
  String deviceid;

  Verify_User_Request({this.countrycode, this.phonenumber, this.deviceid});

  Verify_User_Request.fromJson(Map<String, dynamic> json) {
    countrycode = json['countrycode'];
    phonenumber = json['phonenumber'];
    deviceid = json['deviceid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['countrycode'] = this.countrycode;
    data['phonenumber'] = this.phonenumber;
    data['deviceid'] = this.deviceid;
    return data;
  }
}