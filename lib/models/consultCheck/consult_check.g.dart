// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'consult_check.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConsultCheckModelImpl _$$ConsultCheckModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ConsultCheckModelImpl(
      success: json['success'] as bool? ?? false,
      message: json['message'] as String? ?? '',
      consultResponse: json['response'] == null
          ? const ConsultCheckResponse()
          : ConsultCheckResponse.fromJson(
              json['response'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ConsultCheckModelImplToJson(
        _$ConsultCheckModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'response': instance.consultResponse,
    };

_$ConsultCheckResponseImpl _$$ConsultCheckResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ConsultCheckResponseImpl(
      title: json['holi_day_title'] as String? ?? '',
      content: json['holi_day_content'] as String? ?? '',
      status: json['holi_day_status'] as String? ?? '',
    );

Map<String, dynamic> _$$ConsultCheckResponseImplToJson(
        _$ConsultCheckResponseImpl instance) =>
    <String, dynamic>{
      'holi_day_title': instance.title,
      'holi_day_content': instance.content,
      'holi_day_status': instance.status,
    };
