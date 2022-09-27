

class e_Services {
  int? id;
  String? name;
  String? createdAt;
  String? updatedAt;
  String? period;
  String? pricing;
  String? alternatives;
  String? link;
  String? fullDescription;
  String? shortDescription;
  Null? videoUrl;
  List<Steps>? steps;
  Icon? icon;
  Manual? manual;
  List<Null>? extraFiles;
  List<Targets>? targets;
  List<Categories>? categories;
  List<Null>? reviews;

  e_Services(
      {this.id,
        this.name,
        this.createdAt,
        this.updatedAt,
        this.period,
        this.pricing,
        this.alternatives,
        this.link,
        this.fullDescription,
        this.shortDescription,
        this.videoUrl,
        this.steps,
        this.icon,
        this.manual,
        this.extraFiles,
        this.targets,
        this.categories,
        this.reviews});

  e_Services.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    period = json['period'];
    pricing = json['pricing'];
    alternatives = json['alternatives'];
    link = json['link'];
    fullDescription = json['fullDescription'];
    shortDescription = json['shortDescription'];
    videoUrl = json['videoUrl'];
    if (json['steps'] != null) {
      steps = <Steps>[];
      json['steps'].forEach((v) {
        steps!.add(new Steps.fromJson(v));
      });
    }
    icon = json['icon'] != null ? new Icon.fromJson(json['icon']) : null;
    manual =
    json['manual'] != null ? new Manual.fromJson(json['manual']) : null;
    if (json['extraFiles'] != null) {
      extraFiles = <Null>[];
      json['extraFiles'].forEach((v) {
        extraFiles!.add(new Null.fromJson(v));
      });
    }
    if (json['targets'] != null) {
      targets = <Targets>[];
      json['targets'].forEach((v) {
        targets!.add(new Targets.fromJson(v));
      });
    }
    if (json['categories'] != null) {
      categories = <Categories>[];
      json['categories'].forEach((v) {
        categories!.add(new Categories.fromJson(v));
      });
    }
    if (json['reviews'] != null) {
      reviews = <Null>[];
      json['reviews'].forEach((v) {
        reviews!.add(new Null.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['period'] = this.period;
    data['pricing'] = this.pricing;
    data['alternatives'] = this.alternatives;
    data['link'] = this.link;
    data['fullDescription'] = this.fullDescription;
    data['shortDescription'] = this.shortDescription;
    data['videoUrl'] = this.videoUrl;
    if (this.steps != null) {
      data['steps'] = this.steps!.map((v) => v.toJson()).toList();
    }
    if (this.icon != null) {
      data['icon'] = this.icon!.toJson();
    }
    if (this.manual != null) {
      data['manual'] = this.manual!.toJson();
    }
    if (this.extraFiles != null) {
      data['extraFiles'] = this.extraFiles!.map((v) => v.toJson()).toList();
    }
    if (this.targets != null) {
      data['targets'] = this.targets!.map((v) => v.toJson()).toList();
    }
    if (this.categories != null) {
      data['categories'] = this.categories!.map((v) => v.toJson()).toList();
    }
    if (this.reviews != null) {
      data['reviews'] = this.reviews!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Steps {
  int? id;
  String? description;

  Steps({this.id, this.description});

  Steps.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['description'] = this.description;
    return data;
  }
}

class Icon {
  int? id;
  String? name;
  String? alternativeText;
  String? caption;
  int? width;
  int? height;
  Formats? formats;
  String? hash;
  String? ext;
  String? mime;
  double? size;
  String? url;
  Null? previewUrl;
  String? provider;
  Null? providerMetadata;
  String? createdAt;
  String? updatedAt;

  Icon(
      {this.id,
        this.name,
        this.alternativeText,
        this.caption,
        this.width,
        this.height,
        this.formats,
        this.hash,
        this.ext,
        this.mime,
        this.size,
        this.url,
        this.previewUrl,
        this.provider,
        this.providerMetadata,
        this.createdAt,
        this.updatedAt});

  Icon.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    alternativeText = json['alternativeText'];
    caption = json['caption'];
    width = json['width'];
    height = json['height'];
    formats =
    json['formats'] != null ? new Formats.fromJson(json['formats']) : null;
    hash = json['hash'];
    ext = json['ext'];
    mime = json['mime'];
    size = json['size'];
    url = json['url'];
    previewUrl = json['previewUrl'];
    provider = json['provider'];
    providerMetadata = json['provider_metadata'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['alternativeText'] = this.alternativeText;
    data['caption'] = this.caption;
    data['width'] = this.width;
    data['height'] = this.height;
    if (this.formats != null) {
      data['formats'] = this.formats!.toJson();
    }
    data['hash'] = this.hash;
    data['ext'] = this.ext;
    data['mime'] = this.mime;
    data['size'] = this.size;
    data['url'] = this.url;
    data['previewUrl'] = this.previewUrl;
    data['provider'] = this.provider;
    data['provider_metadata'] = this.providerMetadata;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class Formats {
  Thumbnail? thumbnail;
  Thumbnail? small;

  Formats({this.thumbnail, this.small});

  Formats.fromJson(Map<String, dynamic> json) {
    thumbnail = json['thumbnail'] != null
        ? new Thumbnail.fromJson(json['thumbnail'])
        : null;
    small =
    json['small'] != null ? new Thumbnail.fromJson(json['small']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.thumbnail != null) {
      data['thumbnail'] = this.thumbnail!.toJson();
    }
    if (this.small != null) {
      data['small'] = this.small!.toJson();
    }
    return data;
  }
}

class Thumbnail {
  String? name;
  String? hash;
  String? ext;
  String? mime;
  int? width;
  int? height;
  double? size;
  Null? path;
  String? url;

  Thumbnail(
      {this.name,
        this.hash,
        this.ext,
        this.mime,
        this.width,
        this.height,
        this.size,
        this.path,
        this.url});

  Thumbnail.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    hash = json['hash'];
    ext = json['ext'];
    mime = json['mime'];
    width = json['width'];
    height = json['height'];
    size = json['size'];
    path = json['path'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['hash'] = this.hash;
    data['ext'] = this.ext;
    data['mime'] = this.mime;
    data['width'] = this.width;
    data['height'] = this.height;
    data['size'] = this.size;
    data['path'] = this.path;
    data['url'] = this.url;
    return data;
  }
}

class Manual {
  int? id;
  String? name;
  String? alternativeText;
  String? caption;
  Null? width;
  Null? height;
  Null? formats;
  String? hash;
  String? ext;
  String? mime;
  double? size;
  String? url;
  Null? previewUrl;
  String? provider;
  Null? providerMetadata;
  String? createdAt;
  String? updatedAt;

  Manual(
      {this.id,
        this.name,
        this.alternativeText,
        this.caption,
        this.width,
        this.height,
        this.formats,
        this.hash,
        this.ext,
        this.mime,
        this.size,
        this.url,
        this.previewUrl,
        this.provider,
        this.providerMetadata,
        this.createdAt,
        this.updatedAt});

  Manual.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    alternativeText = json['alternativeText'];
    caption = json['caption'];
    width = json['width'];
    height = json['height'];
    formats = json['formats'];
    hash = json['hash'];
    ext = json['ext'];
    mime = json['mime'];
    size = json['size'];
    url = json['url'];
    previewUrl = json['previewUrl'];
    provider = json['provider'];
    providerMetadata = json['provider_metadata'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['alternativeText'] = this.alternativeText;
    data['caption'] = this.caption;
    data['width'] = this.width;
    data['height'] = this.height;
    data['formats'] = this.formats;
    data['hash'] = this.hash;
    data['ext'] = this.ext;
    data['mime'] = this.mime;
    data['size'] = this.size;
    data['url'] = this.url;
    data['previewUrl'] = this.previewUrl;
    data['provider'] = this.provider;
    data['provider_metadata'] = this.providerMetadata;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class Targets {
  int? id;
  String? name;
  String? createdAt;
  String? updatedAt;

  Targets({this.id, this.name, this.createdAt, this.updatedAt});

  Targets.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}