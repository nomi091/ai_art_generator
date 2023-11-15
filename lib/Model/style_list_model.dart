class StyleListModel {
  List<CustomModels>? customModels;

  StyleListModel({this.customModels});

  StyleListModel.fromJson(Map<String, dynamic> json) {
    if (json['custom_models'] != null) {
      customModels = <CustomModels>[];
      json['custom_models'].forEach((v) {
        customModels!.add(CustomModels.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (customModels != null) {
      data['custom_models'] =
          customModels!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CustomModels {
  String? id;
  String? name;
  String? description;
  bool? nsfw;
  bool? featured;
  GeneratedImage? generatedImage;

  CustomModels(
      {this.id,
      this.name,
      this.description,
      this.nsfw,
      this.featured,
      this.generatedImage});

  CustomModels.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    nsfw = json['nsfw'];
    featured = json['featured'];
    generatedImage = json['generated_image'] != null
        ? GeneratedImage.fromJson(json['generated_image'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['description'] = description;
    data['nsfw'] = nsfw;
    data['featured'] = featured;
    if (generatedImage != null) {
      data['generated_image'] = generatedImage!.toJson();
    }
    return data;
  }
}

class GeneratedImage {
  String? id;
  String? url;

  GeneratedImage({this.id, this.url});

  GeneratedImage.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['url'] = url;
    return data;
  }
}
