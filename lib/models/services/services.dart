// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'services.freezed.dart';
part 'services.g.dart';

@freezed
class ServicesModel with _$ServicesModel {
  factory ServicesModel({
    @Default(false) @JsonKey(name: 'success') bool success,
    @Default('') @JsonKey(name: 'message') String message,
    @Default(ServicesResponse())
    @JsonKey(name: 'response')
    ServicesResponse consultResponse,
  }) = _ServicesModel;

  factory ServicesModel.fromJson(Map<String, dynamic> json) =>
      _$ServicesModelFromJson(json);
}

@freezed
class ServicesResponse with _$ServicesResponse {
  const factory ServicesResponse({
    @Default([]) @JsonKey(name: 'data') List<ServicesResponseData> data,
  }) = _ServicesResponse;

  factory ServicesResponse.fromJson(Map<String, dynamic> json) =>
      _$ServicesResponseFromJson(json);
}

@freezed
class ServicesResponseData with _$ServicesResponseData {
  factory ServicesResponseData({
    @Default(0) @JsonKey(name: 'id') int id,
    @Default('') @JsonKey(name: 'name') String name,
    @Default('') @JsonKey(name: 'bprice') String bprice,
    @Default('') @JsonKey(name: 'price') String price,
    @Default('') @JsonKey(name: 'description') String description,
    @Default('') @JsonKey(name: 'images') String images,
  }) = _ServicesResponseData;

  factory ServicesResponseData.fromJson(Map<String, dynamic> json) =>
      _$ServicesResponseDataFromJson(json);
}
