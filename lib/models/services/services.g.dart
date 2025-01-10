// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'services.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServicesModelImpl _$$ServicesModelImplFromJson(Map<String, dynamic> json) =>
    _$ServicesModelImpl(
      success: json['success'] as bool? ?? false,
      message: json['message'] as String? ?? '',
      consultResponse: json['response'] == null
          ? const ServicesResponse()
          : ServicesResponse.fromJson(json['response'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ServicesModelImplToJson(_$ServicesModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'response': instance.consultResponse,
    };

_$ServicesResponseImpl _$$ServicesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ServicesResponseImpl(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  ServicesResponseData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ServicesResponseImplToJson(
        _$ServicesResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$ServicesResponseDataImpl _$$ServicesResponseDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ServicesResponseDataImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      bprice: json['bprice'] as String? ?? '',
      price: json['price'] as String? ?? '',
      description: json['description'] as String? ?? '',
      images: json['images'] as String? ?? '',
    );

Map<String, dynamic> _$$ServicesResponseDataImplToJson(
        _$ServicesResponseDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'bprice': instance.bprice,
      'price': instance.price,
      'description': instance.description,
      'images': instance.images,
    };
