// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentResponseImpl _$$PaymentResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentResponseImpl(
      success: json['success'] as bool? ?? false,
      message: json['message'] == null
          ? const MessageModelResponse()
          : MessageModelResponse.fromJson(
              json['message'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PaymentResponseImplToJson(
        _$PaymentResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
    };

_$MessageModelResponseImpl _$$MessageModelResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$MessageModelResponseImpl(
      url: json['data'] as String? ?? '',
      bookingRespons: json['booking'] == null
          ? const BookingResponseData()
          : BookingResponseData.fromJson(
              json['booking'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MessageModelResponseImplToJson(
        _$MessageModelResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.url,
      'booking': instance.bookingRespons,
    };

_$BookingResponseDataImpl _$$BookingResponseDataImplFromJson(
        Map<String, dynamic> json) =>
    _$BookingResponseDataImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      email: json['email'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      total_amount: json['total_amount'] as String? ?? '',
      booking_date: json['booking_date'] as String? ?? '',
      booking_type: json['booking_type'] as String? ?? '',
      booking_status: json['booking_status'] as String? ?? '',
      timeslot_id: json['timeslot_id'] as String? ?? '',
      timeslot: json['timeslot'] as String? ?? '',
      timeslot_from: json['timeslot_from'] as String? ?? '',
      timeslot_to: json['timeslot_to'] as String? ?? '',
      consultation_id: json['consultation_id'] as String? ?? '',
      consultation_name: json['consultation_name'] as String? ?? '',
      service_id: json['service_id'] as String? ?? '',
      service_name: json['service_name'] as String? ?? '',
      cat_id: json['cat_id'] as String? ?? '0',
      category_name: json['category_name'] as String? ?? '',
      consultation_image: json['consultation_image'] as String? ?? '',
      service_images: json['service_images'] as String? ?? '',
      category_image: json['category_image'] as String? ?? '',
      transaction_id: json['transaction_id'] as String? ?? '',
    );

Map<String, dynamic> _$$BookingResponseDataImplToJson(
        _$BookingResponseDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'total_amount': instance.total_amount,
      'booking_date': instance.booking_date,
      'booking_type': instance.booking_type,
      'booking_status': instance.booking_status,
      'timeslot_id': instance.timeslot_id,
      'timeslot': instance.timeslot,
      'timeslot_from': instance.timeslot_from,
      'timeslot_to': instance.timeslot_to,
      'consultation_id': instance.consultation_id,
      'consultation_name': instance.consultation_name,
      'service_id': instance.service_id,
      'service_name': instance.service_name,
      'cat_id': instance.cat_id,
      'category_name': instance.category_name,
      'consultation_image': instance.consultation_image,
      'service_images': instance.service_images,
      'category_image': instance.category_image,
      'transaction_id': instance.transaction_id,
    };
