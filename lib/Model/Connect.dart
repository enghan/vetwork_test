class Connect {
  bool success;
  int langVersion;
  int lblVersion;
  String code;
  String authToken;

  Connect(
      {this.success,
        this.langVersion,
        this.lblVersion,
        this.code,
        this.authToken});

  Connect.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    langVersion = json['langVersion'];
    lblVersion = json['lblVersion'];
    code = json['code'];
    authToken = json['authToken'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['langVersion'] = this.langVersion;
    data['lblVersion'] = this.lblVersion;
    data['code'] = this.code;
    data['authToken'] = this.authToken;
    return data;
  }
}
