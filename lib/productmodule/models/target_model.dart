// To parse this JSON data, do
//
//     final target = targetFromJson(jsonString);

import 'dart:convert';

List<Target> targetFromJson(String str) =>
    List<Target>.from(json.decode(str).map((x) => Target.fromJson(x)));

String targetToJson(List<Target> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Target {
  Target({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
    required this.eservices,
  });

  int id;
  String name;
  DateTime createdAt;
  DateTime updatedAt;
  List<Eservice> eservices;

  factory Target.fromJson(Map<String, dynamic> json) => Target(
        id: json["id"],
        name: json["name"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        eservices: List<Eservice>.from(
            json["eservices"].map((x) => Eservice.fromJson(x))),
      );

  get icon => null;

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "eservices": List<dynamic>.from(eservices.map((x) => x.toJson())),
      };
}

class Eservice {
  Eservice({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
    this.period,
    required this.pricing,
    required this.alternatives,
    required this.link,
    required this.fullDescription,
    required this.shortDescription,
    required this.videoUrl,
    required this.steps,
    required this.icon,
    this.manual,
    required this.extraFiles,
  });

  int id;
  String name;
  DateTime createdAt;
  DateTime updatedAt;
  Period? period;
  String pricing;
  String alternatives;
  String link;
  String fullDescription;
  String shortDescription;
  dynamic videoUrl;
  List<Step> steps;
  Icon icon;
  Icon? manual;
  List<Icon> extraFiles;

  factory Eservice.fromJson(Map<String, dynamic> json) => Eservice(
        id: json["id"],
        name: json["name"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        period:
            json["period"] == null ? null : periodValues.map[json["period"]],
        pricing: json["pricing"] == null ? "" : json["pricing"],
        alternatives:
            json["alternatives"] == null ? "" : json["alternatives"],
        link: json["link"] == null ? "" : json["link"],
        fullDescription:
            json["fullDescription"] == null ? "" : json["fullDescription"],
        shortDescription:
            json["shortDescription"] == null ? "" : json["shortDescription"],
        videoUrl: json["videoUrl"],
        steps: List<Step>.from(json["steps"].map((x) => Step.fromJson(x))),
        icon: Icon.fromJson(json["icon"]),
        manual: json["manual"] == null
            ? null
            : (Icon.fromJson(json["manual"]) as Icon),
        extraFiles:
            List<Icon>.from(json["extraFiles"].map((x) => Icon.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "period": period == null ? null : periodValues.reverse[period],
        "pricing": pricing == null ? null : pricing,
        "alternatives": alternatives == null ? null : alternatives,
        "link": link == null ? null : link,
        "fullDescription": fullDescription == null ? null : fullDescription,
        "shortDescription": shortDescription == null ? null : shortDescription,
        "videoUrl": videoUrl,
        "steps": List<dynamic>.from(steps.map((x) => x.toJson())),
        "icon": icon.toJson(),
        "manual": manual == null ? null : (manual as Icon).toJson(),
        "extraFiles": List<dynamic>.from(extraFiles.map((x) => x.toJson())),
      };
}

class Icon {
  Icon({
    required this.id,
    required this.name,
    required this.alternativeText,
    required this.caption,
    required this.width,
    required this.height,
    this.formats,
    required this.hash,
    this.ext,
    this.mime,
    required this.size,
    required this.url,
    required this.previewUrl,
    this.provider,
    required this.providerMetadata,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  String name;
  String alternativeText;
  String caption;
  int width;
  int height;
  Formats? formats;
  String hash;
  Ext? ext;
  Mime? mime;
  double size;
  String url;
  dynamic previewUrl;
  Provider? provider;
  dynamic providerMetadata;
  DateTime createdAt;
  DateTime updatedAt;

  factory Icon.fromJson(Map<String, dynamic> json) => Icon(
        id: json["id"],
        name: json["name"],
        alternativeText: json["alternativeText"],
        caption: json["caption"],
        width: json["width"] == null ? 0 : json["width"],
        height: json["height"] == null ? 0 : json["height"],
        formats: json["formats"] == null
            ? null
            : Formats.fromJson((json["formats"])),
        hash: json["hash"],
        ext: extValues.map[json["ext"]],
        mime: json["mime"] == null ? null : mimeValues.map[json["mime"]],
        size: json["size"].toDouble(),
        url: json["url"],
        previewUrl: json["previewUrl"],
        provider: json["provider"] == null
            ? null
            : providerValues.map[json["provider"]],
        providerMetadata: json["provider_metadata"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "alternativeText": alternativeText,
        "caption": caption,
        "width": width == null ? null : width,
        "height": height == null ? null : height,
        "formats": formats == null ? null : (formats as Formats).toJson(),
        "hash": hash,
        "ext": extValues.reverse[ext],
        "mime": mimeValues.reverse[mime],
        "size": size,
        "url": url,
        "previewUrl": previewUrl,
        "provider": providerValues.reverse[provider],
        "provider_metadata": providerMetadata,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}

enum Ext { PNG, PDF }

final extValues = EnumValues({".pdf": Ext.PDF, ".png": Ext.PNG});

class Formats {
  Formats({
    required this.thumbnail,
    this.small,
  });

  Thumbnail thumbnail;
  Thumbnail? small;

  factory Formats.fromJson(Map<String, dynamic> json) => Formats(
        thumbnail: Thumbnail.fromJson(json["thumbnail"]),
        small: json["small"] == null ? null : Thumbnail.fromJson(json["small"]),
      );

  Map<String, dynamic> toJson() => {
        "thumbnail": thumbnail.toJson(),
        "small": small == null ? null : (small as Thumbnail).toJson(),
      };
}

class Thumbnail {
  Thumbnail({
    required this.name,
    required this.hash,
    this.ext,
    this.mime,
    required this.width,
    required this.height,
    required this.size,
    required this.path,
    required this.url,
  });

  String name;
  String hash;
  Ext? ext;
  Mime? mime;
  int width;
  int height;
  double size;
  dynamic path;
  String url;

  factory Thumbnail.fromJson(Map<String, dynamic> json) => Thumbnail(
        name: json["name"],
        hash: json["hash"],
        ext: json["ext"] == null ? null : extValues.map[json["ext"]],
        mime: json["ext"] == null ? null : mimeValues.map[json["ext"]],
        width: json["width"],
        height: json["height"],
        size: json["size"].toDouble(),
        path: json["path"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "hash": hash,
        "ext": extValues.reverse[ext],
        "mime": mimeValues.reverse[mime],
        "width": width,
        "height": height,
        "size": size,
        "path": path,
        "url": url,
      };
}

enum Mime { IMAGE_PNG, APPLICATION_PDF }

final mimeValues = EnumValues(
    {"application/pdf": Mime.APPLICATION_PDF, "image/png": Mime.IMAGE_PNG});

enum Provider { LOCAL }

final providerValues = EnumValues({"local": Provider.LOCAL});

enum Period { EMPTY, PERIOD, PURPLE, FLUFFY, TENTACLED }

final periodValues = EnumValues({
  "???? ???????? ?????? ???????? ???????? ??????": Period.EMPTY,
  "????????????": Period.FLUFFY,
  "???? ?????? ?????? ?????????? ???????? ??????": Period.PERIOD,
  "????????": Period.PURPLE,
  "???? ???????? ?????? ???????? ????????": Period.TENTACLED
});

class Step {
  Step({
    required this.id,
    required this.description,
  });

  int id;
  String description;

  factory Step.fromJson(Map<String, dynamic> json) => Step(
        id: json["id"],
        description: json["description"] == null ? "" : json["description"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "description": description == null ? null : description,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return (reverseMap as Map<T, String>);
  }
}
