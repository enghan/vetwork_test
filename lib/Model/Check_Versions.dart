class Check_Versions {
  int langVersion;
  int lblVersion;

  Check_Versions({this.langVersion, this.lblVersion});

  Check_Versions.fromJson(Map<String, dynamic> json) {
    langVersion = json['langVersion'];
    lblVersion = json['lblVersion'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['langVersion'] = this.langVersion;
    data['lblVersion'] = this.lblVersion;
    return data;
  }
}