
class Get_Languages {
  List<Languages> languages;
  int langVersion;

  Get_Languages({this.languages, this.langVersion});

  Get_Languages.fromJson(Map<String, dynamic> json) {
    if (json['languages'] != null) {
      languages = new List<Languages>();
      json['languages'].forEach((v) {
        languages.add(new Languages.fromJson(v));
      });
    }
    langVersion = json['langVersion'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.languages != null) {
      data['languages'] = this.languages.map((v) => v.toJson()).toList();
    }
    data['langVersion'] = this.langVersion;
    return data;
  }
}

class Languages {
  String id;
  int version;
  String name;
  bool rightToLeft;
  List<Cultures> cultures;

  Languages(
      {this.id, this.version, this.name, this.rightToLeft, this.cultures});

  Languages.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    version = json['version'];
    name = json['name'];
    rightToLeft = json['rightToLeft'];
    if (json['cultures'] != null) {
      cultures = new List<Cultures>();
      json['cultures'].forEach((v) {
        cultures.add(new Cultures.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['version'] = this.version;
    data['name'] = this.name;
    data['rightToLeft'] = this.rightToLeft;
    if (this.cultures != null) {
      data['cultures'] = this.cultures.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Cultures {
  String id;
  int version;
  String name;

  Cultures({this.id, this.version, this.name});

  Cultures.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    version = json['version'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['version'] = this.version;
    data['name'] = this.name;
    return data;
  }
}

