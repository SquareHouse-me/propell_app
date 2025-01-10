// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consultation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConsultationModelImpl _$$ConsultationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ConsultationModelImpl(
      success: json['success'] as bool? ?? false,
      message: json['message'] as String? ?? '',
      consultResponse: json['response'] == null
          ? const ConsultationResponse()
          : ConsultationResponse.fromJson(
              json['response'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ConsultationModelImplToJson(
        _$ConsultationModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'response': instance.consultResponse,
    };

_$ConsultationResponseImpl _$$ConsultationResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ConsultationResponseImpl(
      data: (json['data'] as List<dynamic>?)
              ?.map((e) => ConsultationData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ConsultationResponseImplToJson(
        _$ConsultationResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$ConsultationDataImpl _$$ConsultationDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ConsultationDataImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      image: json['image'] as String? ?? '',
      date: json['date'] as String? ?? '',
      time: json['time'] as String? ?? '',
    );

Map<String, dynamic> _$$ConsultationDataImplToJson(
        _$ConsultationDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'image': instance.image,
      'date': instance.date,
      'time': instance.time,
    };
