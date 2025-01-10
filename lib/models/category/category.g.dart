// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryModelImpl _$$CategoryModelImplFromJson(Map<String, dynamic> json) =>
    _$CategoryModelImpl(
      status: json['success'] as bool? ?? false,
      message: json['message'] as String? ?? '',
      dataResponse: json['response'] == null
          ? const DataResponse()
          : DataResponse.fromJson(json['response'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CategoryModelImplToJson(_$CategoryModelImpl instance) =>
    <String, dynamic>{
      'success': instance.status,
      'message': instance.message,
      'response': instance.dataResponse,
    };

_$DataResponseImpl _$$DataResponseImplFromJson(Map<String, dynamic> json) =>
    _$DataResponseImpl(
      sliderResponse: (json['slider'] as List<dynamic>?)
              ?.map((e) => SliderResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      categoryResponse: (json['cat'] as List<dynamic>?)
              ?.map((e) => CategoryResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$DataResponseImplToJson(_$DataResponseImpl instance) =>
    <String, dynamic>{
      'slider': instance.sliderResponse,
      'cat': instance.categoryResponse,
    };

_$SliderResponseImpl _$$SliderResponseImplFromJson(Map<String, dynamic> json) =>
    _$SliderResponseImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      image: json['image'] as String? ?? '',
    );

Map<String, dynamic> _$$SliderResponseImplToJson(
        _$SliderResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
    };

_$CategoryResponseImpl _$$CategoryResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoryResponseImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      image: json['image'] as String? ?? '',
      description: json['description'] as String? ?? '',
    );

Map<String, dynamic> _$$CategoryResponseImplToJson(
        _$CategoryResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'description': instance.description,
    };
