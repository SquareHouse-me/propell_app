// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_slot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TimeSlotModelImpl _$$TimeSlotModelImplFromJson(Map<String, dynamic> json) =>
    _$TimeSlotModelImpl(
      success: json['success'] as bool? ?? false,
      message: json['message'] as String? ?? '',
      timeSlotModelResponse: (json['response'] as List<dynamic>?)
              ?.map((e) =>
                  TimeSlotResponseData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$TimeSlotModelImplToJson(_$TimeSlotModelImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'response': instance.timeSlotModelResponse,
    };

_$TimeSlotResponseDataImpl _$$TimeSlotResponseDataImplFromJson(
        Map<String, dynamic> json) =>
    _$TimeSlotResponseDataImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      day: json['day'] as String? ?? '',
      from: json['from'] as String? ?? '',
      to: json['to'] as String? ?? '',
      timeslot: json['timeslot'] as String? ?? '',
      isBooked: (json['booked'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$TimeSlotResponseDataImplToJson(
        _$TimeSlotResponseDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'day': instance.day,
      'from': instance.from,
      'to': instance.to,
      'timeslot': instance.timeslot,
      'booked': instance.isBooked,
    };
