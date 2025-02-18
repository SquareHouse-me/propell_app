import 'package:freezed_annotation/freezed_annotation.dart';
part 'consult_check.freezed.dart';
part 'consult_check.g.dart';

@freezed
class ConsultCheckModel with _$ConsultCheckModel {
  factory ConsultCheckModel({
    @Default(false) @JsonKey(name: 'success') bool success,
    @Default('') @JsonKey(name: 'message') String message,
    @Default(ConsultCheckResponse())
    @JsonKey(name: 'response')
    ConsultCheckResponse consultResponse,
  }) = _ConsultCheckModel;

  factory ConsultCheckModel.fromJson(Map<String, dynamic> json) =>
      _$ConsultCheckModelFromJson(json);
}

@freezed
class ConsultCheckResponse with _$ConsultCheckResponse {
  const factory ConsultCheckResponse({
    @Default('') @JsonKey(name: 'holi_day_title') String title,
    @Default('') @JsonKey(name: 'holi_day_content') String content,
    @Default('') @JsonKey(name: 'holi_day_status') String status,
  }) = _ConsultCheckResponse;

  factory ConsultCheckResponse.fromJson(Map<String, dynamic> json) =>
      _$ConsultCheckResponseFromJson(json);
}
