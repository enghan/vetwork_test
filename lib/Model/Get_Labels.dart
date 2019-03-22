class Get_Labels {
  int version;
  List<PetTyps> petTyps;
  List<SvcTyps> svcTyps;
  List<ReqStatus> reqStatus;
  List<ReqTyps> reqTyps;
  List<ClientMsgs> clientMsgs;
  List<Svcs> svcs;
  List<Sizes> sizes;
  LabelCodes labelCodes;

  Get_Labels(
      {this.version,
        this.petTyps,
        this.svcTyps,
        this.reqStatus,
        this.reqTyps,
        this.clientMsgs,
        this.svcs,
        this.sizes,
        this.labelCodes});

  Get_Labels.fromJson(Map<String, dynamic> json) {
    version = json['version'];
    if (json['petTyps'] != null) {
      petTyps = new List<PetTyps>();
      json['petTyps'].forEach((v) {
        petTyps.add(new PetTyps.fromJson(v));
      });
    }
    if (json['svcTyps'] != null) {
      svcTyps = new List<SvcTyps>();
      json['svcTyps'].forEach((v) {
        svcTyps.add(new SvcTyps.fromJson(v));
      });
    }
    if (json['reqStatus'] != null) {
      reqStatus = new List<ReqStatus>();
      json['reqStatus'].forEach((v) {
        reqStatus.add(new ReqStatus.fromJson(v));
      });
    }
    if (json['reqTyps'] != null) {
      reqTyps = new List<ReqTyps>();
      json['reqTyps'].forEach((v) {
        reqTyps.add(new ReqTyps.fromJson(v));
      });
    }
    if (json['clientMsgs'] != null) {
      clientMsgs = new List<ClientMsgs>();
      json['clientMsgs'].forEach((v) {
        clientMsgs.add(new ClientMsgs.fromJson(v));
      });
    }
    if (json['svcs'] != null) {
      svcs = new List<Svcs>();
      json['svcs'].forEach((v) {
        svcs.add(new Svcs.fromJson(v));
      });
    }
    if (json['sizes'] != null) {
      sizes = new List<Sizes>();
      json['sizes'].forEach((v) {
        sizes.add(new Sizes.fromJson(v));
      });
    }
    labelCodes = json['labelCodes'] != null
        ? new LabelCodes.fromJson(json['labelCodes'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['version'] = this.version;
    if (this.petTyps != null) {
      data['petTyps'] = this.petTyps.map((v) => v.toJson()).toList();
    }
    if (this.svcTyps != null) {
      data['svcTyps'] = this.svcTyps.map((v) => v.toJson()).toList();
    }
    if (this.reqStatus != null) {
      data['reqStatus'] = this.reqStatus.map((v) => v.toJson()).toList();
    }
    if (this.reqTyps != null) {
      data['reqTyps'] = this.reqTyps.map((v) => v.toJson()).toList();
    }
    if (this.clientMsgs != null) {
      data['clientMsgs'] = this.clientMsgs.map((v) => v.toJson()).toList();
    }
    if (this.svcs != null) {
      data['svcs'] = this.svcs.map((v) => v.toJson()).toList();
    }
    if (this.sizes != null) {
      data['sizes'] = this.sizes.map((v) => v.toJson()).toList();
    }
    if (this.labelCodes != null) {
      data['labelCodes'] = this.labelCodes.toJson();
    }
    return data;
  }
}

class PetTyps {
  int id;
  int version;
  String labelCode;
  String imgUrl;

  PetTyps({this.id, this.version, this.labelCode, this.imgUrl});

  PetTyps.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    version = json['version'];
    labelCode = json['labelCode'];
    imgUrl = json['imgUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['version'] = this.version;
    data['labelCode'] = this.labelCode;
    data['imgUrl'] = this.imgUrl;
    return data;
  }
}

class SvcTyps {
  int id;
  int version;
  String labelCode;
  String imgUrl;

  SvcTyps({this.id, this.version, this.labelCode, this.imgUrl});

  SvcTyps.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    version = json['version'];
    labelCode = json['labelCode'];
    imgUrl = json['imgUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['version'] = this.version;
    data['labelCode'] = this.labelCode;
    data['imgUrl'] = this.imgUrl;
    return data;
  }
}

class ReqStatus {
  int id;
  int version;
  String labelCode;
  String imgUrl;

  ReqStatus({this.id, this.version, this.labelCode, this.imgUrl});

  ReqStatus.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    version = json['version'];
    labelCode = json['labelCode'];
    imgUrl = json['imgUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['version'] = this.version;
    data['labelCode'] = this.labelCode;
    data['imgUrl'] = this.imgUrl;
    return data;
  }
}

class ReqTyps {
  int id;
  int version;
  String labelCode;
  String imgUrl;

  ReqTyps({this.id, this.version, this.labelCode, this.imgUrl});

  ReqTyps.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    version = json['version'];
    labelCode = json['labelCode'];
    imgUrl = json['imgUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['version'] = this.version;
    data['labelCode'] = this.labelCode;
    data['imgUrl'] = this.imgUrl;
    return data;
  }
}

class ClientMsgs {
  int id;
  int version;
  String labelCode;

  ClientMsgs({this.id, this.version, this.labelCode});

  ClientMsgs.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    version = json['version'];
    labelCode = json['labelCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['version'] = this.version;
    data['labelCode'] = this.labelCode;
    return data;
  }
}

class Svcs {
  int id;
  int version;
  String labelCode;
  int svcTypId;
  String imgUrl;

  Svcs({this.id, this.version, this.labelCode, this.svcTypId, this.imgUrl});

  Svcs.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    version = json['version'];
    labelCode = json['labelCode'];
    svcTypId = json['svcTypId'];
    imgUrl = json['imgUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['version'] = this.version;
    data['labelCode'] = this.labelCode;
    data['svcTypId'] = this.svcTypId;
    data['imgUrl'] = this.imgUrl;
    return data;
  }
}

class Sizes {
  int id;
  int version;
  String labelCode;
  int petTypId;
  int order;
  String imgUrl;

  Sizes(
      {this.id,
        this.version,
        this.labelCode,
        this.petTypId,
        this.order,
        this.imgUrl});

  Sizes.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    version = json['version'];
    labelCode = json['labelCode'];
    petTypId = json['petTypId'];
    order = json['order'];
    imgUrl = json['imgUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['version'] = this.version;
    data['labelCode'] = this.labelCode;
    data['petTypId'] = this.petTypId;
    data['order'] = this.order;
    data['imgUrl'] = this.imgUrl;
    return data;
  }
}

class LabelCodes {
  String another;
  String bigsize1;
  String cancel;
  String checkup;
  String deworming;
  String evacuation;
  String help;
  String home;
  String msg111;
  String msg900;
  String msg910;
  String msg911;
  String msg999;
  String offer;
  String pettype1;
  String pettype2;
  String svctype1;
  String svctype2;
  String username;
  String vaccine;
  String welcome;
  String xray;

  LabelCodes(
      {this.another,
        this.bigsize1,
        this.cancel,
        this.checkup,
        this.deworming,
        this.evacuation,
        this.help,
        this.home,
        this.msg111,
        this.msg900,
        this.msg910,
        this.msg911,
        this.msg999,
        this.offer,
        this.pettype1,
        this.pettype2,
        this.svctype1,
        this.svctype2,
        this.username,
        this.vaccine,
        this.welcome,
        this.xray});

  LabelCodes.fromJson(Map<String, dynamic> json) {
    another = json['another'];
    bigsize1 = json['bigsize_1'];
    cancel = json['cancel'];
    checkup = json['checkup'];
    deworming = json['deworming'];
    evacuation = json['evacuation'];
    help = json['help'];
    home = json['home'];
    msg111 = json['msg_111'];
    msg900 = json['msg_900'];
    msg910 = json['msg_910'];
    msg911 = json['msg_911'];
    msg999 = json['msg_999'];
    offer = json['offer'];
    pettype1 = json['pettype_1'];
    pettype2 = json['pettype_2'];
    svctype1 = json['svctype_1'];
    svctype2 = json['svctype_2'];
    username = json['username'];
    vaccine = json['vaccine'];
    welcome = json['welcome'];
    xray = json['xray'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['another'] = this.another;
    data['bigsize_1'] = this.bigsize1;
    data['cancel'] = this.cancel;
    data['checkup'] = this.checkup;
    data['deworming'] = this.deworming;
    data['evacuation'] = this.evacuation;
    data['help'] = this.help;
    data['home'] = this.home;
    data['msg_111'] = this.msg111;
    data['msg_900'] = this.msg900;
    data['msg_910'] = this.msg910;
    data['msg_911'] = this.msg911;
    data['msg_999'] = this.msg999;
    data['offer'] = this.offer;
    data['pettype_1'] = this.pettype1;
    data['pettype_2'] = this.pettype2;
    data['svctype_1'] = this.svctype1;
    data['svctype_2'] = this.svctype2;
    data['username'] = this.username;
    data['vaccine'] = this.vaccine;
    data['welcome'] = this.welcome;
    data['xray'] = this.xray;
    return data;
  }
}

