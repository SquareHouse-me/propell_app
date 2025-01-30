// ignore_for_file: invalid_annotation_target, non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';
part 'checkout.freezed.dart';
part 'checkout.g.dart';

@freezed
class PaymentResponse with _$PaymentResponse {
  factory PaymentResponse({
    @Default(false) @JsonKey(name: 'success') bool success,
    @Default(MessageModelResponse())
    @JsonKey(name: 'message')
    MessageModelResponse message,
  }) = _PaymentResponse;

  factory PaymentResponse.fromJson(Map<String, dynamic> json) =>
      _$PaymentResponseFromJson(json);
}

@freezed
class MessageModelResponse with _$MessageModelResponse {
  const factory MessageModelResponse({
    @Default('') @JsonKey(name: 'data') String url,
    @Default(BookingResponseData())
    @JsonKey(name: 'booking')
    BookingResponseData bookingRespons,
  }) = _MessageModelResponse;

  factory MessageModelResponse.fromJson(Map<String, dynamic> json) =>
      _$MessageModelResponseFromJson(json);
}

@freezed
class BookingResponseData with _$BookingResponseData {
  const factory BookingResponseData({
    @Default(0) @JsonKey(name: 'id') int id,
    @Default('') @JsonKey(name: 'name') String name,
    @Default('') @JsonKey(name: 'email') String email,
    @Default('') @JsonKey(name: 'phone') String phone,
    @Default('') @JsonKey(name: 'discription') String discription,
    @Default('') @JsonKey(name: 'total_amount') String total_amount,
    @Default('') @JsonKey(name: 'booking_date') String booking_date,
    @Default('') @JsonKey(name: 'booking_type') String booking_type,
    @Default('') @JsonKey(name: 'booking_status') String booking_status,
    @Default('') @JsonKey(name: 'timeslot_id') String timeslot_id,
    @Default('') @JsonKey(name: 'timeslot') String timeslot,
    @Default('') @JsonKey(name: 'timeslot_from') String timeslot_from,
    @Default('') @JsonKey(name: 'timeslot_to') String timeslot_to,
    @Default(0) @JsonKey(name: 'consultation_id') int consultation_id,
    @Default('') @JsonKey(name: 'consultation_name') String consultation_name,
    @Default(0) @JsonKey(name: 'service_id') int service_id,
    @Default('') @JsonKey(name: 'service_name') String service_name,
    @Default(0) @JsonKey(name: 'cat_id') int cat_id,
    @Default('') @JsonKey(name: 'category_name') String category_name,
    @Default('') @JsonKey(name: 'consultation_image') String consultation_image,
    @Default('') @JsonKey(name: 'service_images') String service_images,
    @Default('') @JsonKey(name: 'category_image') String category_image,
  }) = _BookingResponseData;

  factory BookingResponseData.fromJson(Map<String, dynamic> json) =>
      _$BookingResponseDataFromJson(json);
}
