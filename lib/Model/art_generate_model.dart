class ArtGenerateModel {
  SdGenerationJob? sdGenerationJob;

  ArtGenerateModel({this.sdGenerationJob});

  ArtGenerateModel.fromJson(Map<String, dynamic> json) {
    sdGenerationJob = json['sdGenerationJob'] != null
        ? SdGenerationJob.fromJson(json['sdGenerationJob'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (sdGenerationJob != null) {
      data['sdGenerationJob'] = sdGenerationJob!.toJson();
    }
    return data;
  }
}

class SdGenerationJob {
  String? generationId;

  SdGenerationJob({this.generationId});

  SdGenerationJob.fromJson(Map<String, dynamic> json) {
    generationId = json['generationId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['generationId'] = generationId;
    return data;
  }
}
