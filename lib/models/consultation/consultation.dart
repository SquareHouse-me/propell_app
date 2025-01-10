import 'package:freezed_annotation/freezed_annotation.dart';
part 'consultation.freezed.dart';
part 'consultation.g.dart';

@freezed
class ConsultationModel with _$ConsultationModel {
  factory ConsultationModel({
    @Default(false) @JsonKey(name: 'success') bool success,
    @Default('') @JsonKey(name: 'message') String message,
    @Default(ConsultationResponse())
    @JsonKey(name: 'response')
    ConsultationResponse consultResponse,
  }) = _ConsultationModel;

  factory ConsultationModel.fromJson(Map<String, dynamic> json) =>
      _$ConsultationModelFromJson(json);
}

@freezed
class ConsultationResponse with _$ConsultationResponse {
  const factory ConsultationResponse({
    @Default([]) @JsonKey(name: 'data') List<ConsultationData> data,
  }) = _ConsultationResponse;

  factory ConsultationResponse.fromJson(Map<String, dynamic> json) =>
      _$ConsultationResponseFromJson(json);
}

@freezed
class ConsultationData with _$ConsultationData {
  factory ConsultationData({
    @Default(0) @JsonKey(name: 'id') int id,
    @Default('') @JsonKey(name: 'name') String name,
    @Default('') @JsonKey(name: 'description') String description,
    @Default('') @JsonKey(name: 'image') String image,
    @Default('') @JsonKey(name: 'date') String date,
    @Default('') @JsonKey(name: 'time') String time,
  }) = _ConsultationData;

  factory ConsultationData.fromJson(Map<String, dynamic> json) =>
      _$ConsultationDataFromJson(json);
}
