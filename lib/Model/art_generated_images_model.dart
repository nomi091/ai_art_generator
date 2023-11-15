class ArtGeneratedImagesModel {
  GenerationsByPk? generationsByPk;

  ArtGeneratedImagesModel({this.generationsByPk});

  ArtGeneratedImagesModel.fromJson(Map<String, dynamic> json) {
    generationsByPk = json['generations_by_pk'] != null
        ? GenerationsByPk.fromJson(json['generations_by_pk'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (generationsByPk != null) {
      data['generations_by_pk'] = generationsByPk!.toJson();
    }
    return data;
  }
}

class GenerationsByPk {
  List<GeneratedImages>? generatedImages;
  String? modelId;
  String? prompt;
  String? negativePrompt;
  int? imageHeight;
  int? imageWidth;
  int? inferenceSteps;
  int? seed;
  bool? public;
  String? scheduler;
  String? sdVersion;
  String? status;
  String? presetStyle;
  String? initStrength;
  int? guidanceScale;
  String? id;
  String? createdAt;

  GenerationsByPk(
      {this.generatedImages,
      this.modelId,
      this.prompt,
      this.negativePrompt,
      this.imageHeight,
      this.imageWidth,
      this.inferenceSteps,
      this.seed,
      this.public,
      this.scheduler,
      this.sdVersion,
      this.status,
      this.presetStyle,
      this.initStrength,
      this.guidanceScale,
      this.id,
      this.createdAt});

  GenerationsByPk.fromJson(Map<String, dynamic> json) {
    if (json['generated_images'] != null) {
      generatedImages = <GeneratedImages>[];
      json['generated_images'].forEach((v) {
        generatedImages!.add(GeneratedImages.fromJson(v));
      });
    }
    modelId = json['modelId'];
    prompt = json['prompt'];
    negativePrompt = json['negativePrompt'];
    imageHeight = json['imageHeight'];
    imageWidth = json['imageWidth'];
    inferenceSteps = json['inferenceSteps'];
    seed = json['seed'];
    public = json['public'];
    scheduler = json['scheduler'];
    sdVersion = json['sdVersion'];
    status = json['status'];
    presetStyle = json['presetStyle'];
    initStrength = json['initStrength']??"Z";
    guidanceScale = json['guidanceScale'];
    id = json['id'];
    createdAt = json['createdAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (generatedImages != null) {
      data['generated_images'] =
          generatedImages!.map((v) => v.toJson()).toList();
    }
    data['modelId'] = modelId;
    data['prompt'] = prompt;
    data['negativePrompt'] = negativePrompt;
    data['imageHeight'] = imageHeight;
    data['imageWidth'] = imageWidth;
    data['inferenceSteps'] = inferenceSteps;
    data['seed'] = seed;
    data['public'] = public;
    data['scheduler'] = scheduler;
    data['sdVersion'] = sdVersion;
    data['status'] = status;
    data['presetStyle'] = presetStyle;
    data['initStrength'] = initStrength;
    data['guidanceScale'] = guidanceScale;
    data['id'] = id;
    data['createdAt'] = createdAt;
    return data;
  }
}

class GeneratedImages {
  String? url;
  bool? nsfw;
  String? id;
  int? likeCount;
  // List<Null>? generatedImageVariationGenerics;

  GeneratedImages(
      {this.url,
      this.nsfw,
      this.id,
      this.likeCount,
      // this.generatedImageVariationGenerics
      });

  GeneratedImages.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    nsfw = json['nsfw'];
    id = json['id'];
    likeCount = json['likeCount'];
    // if (json['generated_image_variation_generics'] != null) {
    //   generatedImageVariationGenerics = <Null>[];
    //   json['generated_image_variation_generics'].forEach((v) {
    //     generatedImageVariationGenerics!.add(new Null.fromJson(v));
    //   });
    // }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['url'] = url;
    data['nsfw'] = nsfw;
    data['id'] = id;
    data['likeCount'] = likeCount;
    // if (this.generatedImageVariationGenerics != null) {
    //   data['generated_image_variation_generics'] =
    //       this.generatedImageVariationGenerics!.map((v) => v.toJson()).toList();
    // }
    return data;
  }
}
