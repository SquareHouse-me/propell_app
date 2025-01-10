import 'package:freezed_annotation/freezed_annotation.dart';
part 'category.freezed.dart';
part 'category.g.dart';

@freezed
class CategoryModel with _$CategoryModel {
  factory CategoryModel({
    @Default(false) @JsonKey(name: 'success') bool status,
    @Default('') @JsonKey(name: 'message') String message,
    @Default(DataResponse())
    @JsonKey(name: 'response')
    DataResponse dataResponse,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}

@freezed
class DataResponse with _$DataResponse {
  const factory DataResponse({
    @Default([]) @JsonKey(name: 'slider') List<SliderResponse> sliderResponse,
    @Default([]) @JsonKey(name: 'cat') List<CategoryResponse> categoryResponse,
  }) = _DataResponse;

  factory DataResponse.fromJson(Map<String, dynamic> json) =>
      _$DataResponseFromJson(json);
}

@freezed
class SliderResponse with _$SliderResponse {
  factory SliderResponse({
    @Default(0) @JsonKey(name: 'id') int id,
    @Default('') @JsonKey(name: 'name') String name,
    @Default('') @JsonKey(name: 'image') String image,
  }) = _SliderResponse;

  factory SliderResponse.fromJson(Map<String, dynamic> json) =>
      _$SliderResponseFromJson(json);
}

@freezed
class CategoryResponse with _$CategoryResponse {
  factory CategoryResponse({
    @Default(0) @JsonKey(name: 'id') int id,
    @Default('') @JsonKey(name: 'name') String name,
    @Default('') @JsonKey(name: 'image') String image,
    @Default('') @JsonKey(name: 'description') String description,
  }) = _CategoryResponse;

  factory CategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoryResponseFromJson(json);
}