class Add_New_Address {
  String userid;
  String addressLine1;
  String city;
  String state;
  String countryISO;
  String isDefault;

  Add_New_Address(
      {this.userid,
        this.addressLine1,
        this.city,
        this.state,
        this.countryISO,
        this.isDefault});

  Add_New_Address.fromJson(Map<String, dynamic> json) {
    userid = json['userid'];
    addressLine1 = json['addressLine1'];
    city = json['city'];
    state = json['state'];
    countryISO = json['countryISO'];
    isDefault = json['isDefault'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userid'] = this.userid;
    data['addressLine1'] = this.addressLine1;
    data['city'] = this.city;
    data['state'] = this.state;
    data['countryISO'] = this.countryISO;
    data['isDefault'] = this.isDefault;
    return data;
  }
}