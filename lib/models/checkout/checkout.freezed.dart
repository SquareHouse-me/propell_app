// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'checkout.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentResponse _$PaymentResponseFromJson(Map<String, dynamic> json) {
  return _PaymentResponse.fromJson(json);
}

/// @nodoc
mixin _$PaymentResponse {
  @JsonKey(name: 'success')
  bool get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  MessageModelResponse get message => throw _privateConstructorUsedError;

  /// Serializes this PaymentResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PaymentResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentResponseCopyWith<PaymentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentResponseCopyWith<$Res> {
  factory $PaymentResponseCopyWith(
          PaymentResponse value, $Res Function(PaymentResponse) then) =
      _$PaymentResponseCopyWithImpl<$Res, PaymentResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool success,
      @JsonKey(name: 'message') MessageModelResponse message});

  $MessageModelResponseCopyWith<$Res> get message;
}

/// @nodoc
class _$PaymentResponseCopyWithImpl<$Res, $Val extends PaymentResponse>
    implements $PaymentResponseCopyWith<$Res> {
  _$PaymentResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as MessageModelResponse,
    ) as $Val);
  }

  /// Create a copy of PaymentResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MessageModelResponseCopyWith<$Res> get message {
    return $MessageModelResponseCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaymentResponseImplCopyWith<$Res>
    implements $PaymentResponseCopyWith<$Res> {
  factory _$$PaymentResponseImplCopyWith(_$PaymentResponseImpl value,
          $Res Function(_$PaymentResponseImpl) then) =
      __$$PaymentResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool success,
      @JsonKey(name: 'message') MessageModelResponse message});

  @override
  $MessageModelResponseCopyWith<$Res> get message;
}

/// @nodoc
class __$$PaymentResponseImplCopyWithImpl<$Res>
    extends _$PaymentResponseCopyWithImpl<$Res, _$PaymentResponseImpl>
    implements _$$PaymentResponseImplCopyWith<$Res> {
  __$$PaymentResponseImplCopyWithImpl(
      _$PaymentResponseImpl _value, $Res Function(_$PaymentResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
  }) {
    return _then(_$PaymentResponseImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as MessageModelResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentResponseImpl implements _PaymentResponse {
  _$PaymentResponseImpl(
      {@JsonKey(name: 'success') this.success = false,
      @JsonKey(name: 'message') this.message = const MessageModelResponse()});

  factory _$PaymentResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentResponseImplFromJson(json);

  @override
  @JsonKey(name: 'success')
  final bool success;
  @override
  @JsonKey(name: 'message')
  final MessageModelResponse message;

  @override
  String toString() {
    return 'PaymentResponse(success: $success, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message);

  /// Create a copy of PaymentResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentResponseImplCopyWith<_$PaymentResponseImpl> get copyWith =>
      __$$PaymentResponseImplCopyWithImpl<_$PaymentResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentResponseImplToJson(
      this,
    );
  }
}

abstract class _PaymentResponse implements PaymentResponse {
  factory _PaymentResponse(
          {@JsonKey(name: 'success') final bool success,
          @JsonKey(name: 'message') final MessageModelResponse message}) =
      _$PaymentResponseImpl;

  factory _PaymentResponse.fromJson(Map<String, dynamic> json) =
      _$PaymentResponseImpl.fromJson;

  @override
  @JsonKey(name: 'success')
  bool get success;
  @override
  @JsonKey(name: 'message')
  MessageModelResponse get message;

  /// Create a copy of PaymentResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentResponseImplCopyWith<_$PaymentResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MessageModelResponse _$MessageModelResponseFromJson(Map<String, dynamic> json) {
  return _MessageModelResponse.fromJson(json);
}

/// @nodoc
mixin _$MessageModelResponse {
  @JsonKey(name: 'data')
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'booking')
  BookingResponseData get bookingRespons => throw _privateConstructorUsedError;

  /// Serializes this MessageModelResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessageModelResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MessageModelResponseCopyWith<MessageModelResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageModelResponseCopyWith<$Res> {
  factory $MessageModelResponseCopyWith(MessageModelResponse value,
          $Res Function(MessageModelResponse) then) =
      _$MessageModelResponseCopyWithImpl<$Res, MessageModelResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'data') String url,
      @JsonKey(name: 'booking') BookingResponseData bookingRespons});

  $BookingResponseDataCopyWith<$Res> get bookingRespons;
}

/// @nodoc
class _$MessageModelResponseCopyWithImpl<$Res,
        $Val extends MessageModelResponse>
    implements $MessageModelResponseCopyWith<$Res> {
  _$MessageModelResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MessageModelResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? bookingRespons = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      bookingRespons: null == bookingRespons
          ? _value.bookingRespons
          : bookingRespons // ignore: cast_nullable_to_non_nullable
              as BookingResponseData,
    ) as $Val);
  }

  /// Create a copy of MessageModelResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BookingResponseDataCopyWith<$Res> get bookingRespons {
    return $BookingResponseDataCopyWith<$Res>(_value.bookingRespons, (value) {
      return _then(_value.copyWith(bookingRespons: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MessageModelResponseImplCopyWith<$Res>
    implements $MessageModelResponseCopyWith<$Res> {
  factory _$$MessageModelResponseImplCopyWith(_$MessageModelResponseImpl value,
          $Res Function(_$MessageModelResponseImpl) then) =
      __$$MessageModelResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'data') String url,
      @JsonKey(name: 'booking') BookingResponseData bookingRespons});

  @override
  $BookingResponseDataCopyWith<$Res> get bookingRespons;
}

/// @nodoc
class __$$MessageModelResponseImplCopyWithImpl<$Res>
    extends _$MessageModelResponseCopyWithImpl<$Res, _$MessageModelResponseImpl>
    implements _$$MessageModelResponseImplCopyWith<$Res> {
  __$$MessageModelResponseImplCopyWithImpl(_$MessageModelResponseImpl _value,
      $Res Function(_$MessageModelResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageModelResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? bookingRespons = null,
  }) {
    return _then(_$MessageModelResponseImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      bookingRespons: null == bookingRespons
          ? _value.bookingRespons
          : bookingRespons // ignore: cast_nullable_to_non_nullable
              as BookingResponseData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageModelResponseImpl implements _MessageModelResponse {
  const _$MessageModelResponseImpl(
      {@JsonKey(name: 'data') this.url = '',
      @JsonKey(name: 'booking')
      this.bookingRespons = const BookingResponseData()});

  factory _$MessageModelResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageModelResponseImplFromJson(json);

  @override
  @JsonKey(name: 'data')
  final String url;
  @override
  @JsonKey(name: 'booking')
  final BookingResponseData bookingRespons;

  @override
  String toString() {
    return 'MessageModelResponse(url: $url, bookingRespons: $bookingRespons)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageModelResponseImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.bookingRespons, bookingRespons) ||
                other.bookingRespons == bookingRespons));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url, bookingRespons);

  /// Create a copy of MessageModelResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageModelResponseImplCopyWith<_$MessageModelResponseImpl>
      get copyWith =>
          __$$MessageModelResponseImplCopyWithImpl<_$MessageModelResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageModelResponseImplToJson(
      this,
    );
  }
}

abstract class _MessageModelResponse implements MessageModelResponse {
  const factory _MessageModelResponse(
          {@JsonKey(name: 'data') final String url,
          @JsonKey(name: 'booking') final BookingResponseData bookingRespons}) =
      _$MessageModelResponseImpl;

  factory _MessageModelResponse.fromJson(Map<String, dynamic> json) =
      _$MessageModelResponseImpl.fromJson;

  @override
  @JsonKey(name: 'data')
  String get url;
  @override
  @JsonKey(name: 'booking')
  BookingResponseData get bookingRespons;

  /// Create a copy of MessageModelResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageModelResponseImplCopyWith<_$MessageModelResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BookingResponseData _$BookingResponseDataFromJson(Map<String, dynamic> json) {
  return _BookingResponseData.fromJson(json);
}

/// @nodoc
mixin _$BookingResponseData {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_amount')
  String get total_amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'booking_date')
  String get booking_date => throw _privateConstructorUsedError;
  @JsonKey(name: 'booking_type')
  String get booking_type => throw _privateConstructorUsedError;
  @JsonKey(name: 'booking_status')
  String get booking_status => throw _privateConstructorUsedError;
  @JsonKey(name: 'timeslot_id')
  String get timeslot_id => throw _privateConstructorUsedError;
  @JsonKey(name: 'timeslot')
  String get timeslot => throw _privateConstructorUsedError;
  @JsonKey(name: 'timeslot_from')
  String get timeslot_from => throw _privateConstructorUsedError;
  @JsonKey(name: 'timeslot_to')
  String get timeslot_to => throw _privateConstructorUsedError;
  @JsonKey(name: 'consultation_id')
  String get consultation_id => throw _privateConstructorUsedError;
  @JsonKey(name: 'consultation_name')
  String get consultation_name => throw _privateConstructorUsedError;
  @JsonKey(name: 'service_id')
  String get service_id => throw _privateConstructorUsedError;
  @JsonKey(name: 'service_name')
  String get service_name => throw _privateConstructorUsedError;
  @JsonKey(name: 'cat_id')
  String get cat_id => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_name')
  String get category_name => throw _privateConstructorUsedError;
  @JsonKey(name: 'consultation_image')
  String get consultation_image => throw _privateConstructorUsedError;
  @JsonKey(name: 'service_images')
  String get service_images => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_image')
  String get category_image => throw _privateConstructorUsedError;
  @JsonKey(name: 'transaction_id')
  String get transaction_id => throw _privateConstructorUsedError;

  /// Serializes this BookingResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookingResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookingResponseDataCopyWith<BookingResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingResponseDataCopyWith<$Res> {
  factory $BookingResponseDataCopyWith(
          BookingResponseData value, $Res Function(BookingResponseData) then) =
      _$BookingResponseDataCopyWithImpl<$Res, BookingResponseData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'phone') String phone,
      @JsonKey(name: 'total_amount') String total_amount,
      @JsonKey(name: 'booking_date') String booking_date,
      @JsonKey(name: 'booking_type') String booking_type,
      @JsonKey(name: 'booking_status') String booking_status,
      @JsonKey(name: 'timeslot_id') String timeslot_id,
      @JsonKey(name: 'timeslot') String timeslot,
      @JsonKey(name: 'timeslot_from') String timeslot_from,
      @JsonKey(name: 'timeslot_to') String timeslot_to,
      @JsonKey(name: 'consultation_id') String consultation_id,
      @JsonKey(name: 'consultation_name') String consultation_name,
      @JsonKey(name: 'service_id') String service_id,
      @JsonKey(name: 'service_name') String service_name,
      @JsonKey(name: 'cat_id') String cat_id,
      @JsonKey(name: 'category_name') String category_name,
      @JsonKey(name: 'consultation_image') String consultation_image,
      @JsonKey(name: 'service_images') String service_images,
      @JsonKey(name: 'category_image') String category_image,
      @JsonKey(name: 'transaction_id') String transaction_id});
}

/// @nodoc
class _$BookingResponseDataCopyWithImpl<$Res, $Val extends BookingResponseData>
    implements $BookingResponseDataCopyWith<$Res> {
  _$BookingResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookingResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? phone = null,
    Object? total_amount = null,
    Object? booking_date = null,
    Object? booking_type = null,
    Object? booking_status = null,
    Object? timeslot_id = null,
    Object? timeslot = null,
    Object? timeslot_from = null,
    Object? timeslot_to = null,
    Object? consultation_id = null,
    Object? consultation_name = null,
    Object? service_id = null,
    Object? service_name = null,
    Object? cat_id = null,
    Object? category_name = null,
    Object? consultation_image = null,
    Object? service_images = null,
    Object? category_image = null,
    Object? transaction_id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      total_amount: null == total_amount
          ? _value.total_amount
          : total_amount // ignore: cast_nullable_to_non_nullable
              as String,
      booking_date: null == booking_date
          ? _value.booking_date
          : booking_date // ignore: cast_nullable_to_non_nullable
              as String,
      booking_type: null == booking_type
          ? _value.booking_type
          : booking_type // ignore: cast_nullable_to_non_nullable
              as String,
      booking_status: null == booking_status
          ? _value.booking_status
          : booking_status // ignore: cast_nullable_to_non_nullable
              as String,
      timeslot_id: null == timeslot_id
          ? _value.timeslot_id
          : timeslot_id // ignore: cast_nullable_to_non_nullable
              as String,
      timeslot: null == timeslot
          ? _value.timeslot
          : timeslot // ignore: cast_nullable_to_non_nullable
              as String,
      timeslot_from: null == timeslot_from
          ? _value.timeslot_from
          : timeslot_from // ignore: cast_nullable_to_non_nullable
              as String,
      timeslot_to: null == timeslot_to
          ? _value.timeslot_to
          : timeslot_to // ignore: cast_nullable_to_non_nullable
              as String,
      consultation_id: null == consultation_id
          ? _value.consultation_id
          : consultation_id // ignore: cast_nullable_to_non_nullable
              as String,
      consultation_name: null == consultation_name
          ? _value.consultation_name
          : consultation_name // ignore: cast_nullable_to_non_nullable
              as String,
      service_id: null == service_id
          ? _value.service_id
          : service_id // ignore: cast_nullable_to_non_nullable
              as String,
      service_name: null == service_name
          ? _value.service_name
          : service_name // ignore: cast_nullable_to_non_nullable
              as String,
      cat_id: null == cat_id
          ? _value.cat_id
          : cat_id // ignore: cast_nullable_to_non_nullable
              as String,
      category_name: null == category_name
          ? _value.category_name
          : category_name // ignore: cast_nullable_to_non_nullable
              as String,
      consultation_image: null == consultation_image
          ? _value.consultation_image
          : consultation_image // ignore: cast_nullable_to_non_nullable
              as String,
      service_images: null == service_images
          ? _value.service_images
          : service_images // ignore: cast_nullable_to_non_nullable
              as String,
      category_image: null == category_image
          ? _value.category_image
          : category_image // ignore: cast_nullable_to_non_nullable
              as String,
      transaction_id: null == transaction_id
          ? _value.transaction_id
          : transaction_id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookingResponseDataImplCopyWith<$Res>
    implements $BookingResponseDataCopyWith<$Res> {
  factory _$$BookingResponseDataImplCopyWith(_$BookingResponseDataImpl value,
          $Res Function(_$BookingResponseDataImpl) then) =
      __$$BookingResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'phone') String phone,
      @JsonKey(name: 'total_amount') String total_amount,
      @JsonKey(name: 'booking_date') String booking_date,
      @JsonKey(name: 'booking_type') String booking_type,
      @JsonKey(name: 'booking_status') String booking_status,
      @JsonKey(name: 'timeslot_id') String timeslot_id,
      @JsonKey(name: 'timeslot') String timeslot,
      @JsonKey(name: 'timeslot_from') String timeslot_from,
      @JsonKey(name: 'timeslot_to') String timeslot_to,
      @JsonKey(name: 'consultation_id') String consultation_id,
      @JsonKey(name: 'consultation_name') String consultation_name,
      @JsonKey(name: 'service_id') String service_id,
      @JsonKey(name: 'service_name') String service_name,
      @JsonKey(name: 'cat_id') String cat_id,
      @JsonKey(name: 'category_name') String category_name,
      @JsonKey(name: 'consultation_image') String consultation_image,
      @JsonKey(name: 'service_images') String service_images,
      @JsonKey(name: 'category_image') String category_image,
      @JsonKey(name: 'transaction_id') String transaction_id});
}

/// @nodoc
class __$$BookingResponseDataImplCopyWithImpl<$Res>
    extends _$BookingResponseDataCopyWithImpl<$Res, _$BookingResponseDataImpl>
    implements _$$BookingResponseDataImplCopyWith<$Res> {
  __$$BookingResponseDataImplCopyWithImpl(_$BookingResponseDataImpl _value,
      $Res Function(_$BookingResponseDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookingResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? phone = null,
    Object? total_amount = null,
    Object? booking_date = null,
    Object? booking_type = null,
    Object? booking_status = null,
    Object? timeslot_id = null,
    Object? timeslot = null,
    Object? timeslot_from = null,
    Object? timeslot_to = null,
    Object? consultation_id = null,
    Object? consultation_name = null,
    Object? service_id = null,
    Object? service_name = null,
    Object? cat_id = null,
    Object? category_name = null,
    Object? consultation_image = null,
    Object? service_images = null,
    Object? category_image = null,
    Object? transaction_id = null,
  }) {
    return _then(_$BookingResponseDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      total_amount: null == total_amount
          ? _value.total_amount
          : total_amount // ignore: cast_nullable_to_non_nullable
              as String,
      booking_date: null == booking_date
          ? _value.booking_date
          : booking_date // ignore: cast_nullable_to_non_nullable
              as String,
      booking_type: null == booking_type
          ? _value.booking_type
          : booking_type // ignore: cast_nullable_to_non_nullable
              as String,
      booking_status: null == booking_status
          ? _value.booking_status
          : booking_status // ignore: cast_nullable_to_non_nullable
              as String,
      timeslot_id: null == timeslot_id
          ? _value.timeslot_id
          : timeslot_id // ignore: cast_nullable_to_non_nullable
              as String,
      timeslot: null == timeslot
          ? _value.timeslot
          : timeslot // ignore: cast_nullable_to_non_nullable
              as String,
      timeslot_from: null == timeslot_from
          ? _value.timeslot_from
          : timeslot_from // ignore: cast_nullable_to_non_nullable
              as String,
      timeslot_to: null == timeslot_to
          ? _value.timeslot_to
          : timeslot_to // ignore: cast_nullable_to_non_nullable
              as String,
      consultation_id: null == consultation_id
          ? _value.consultation_id
          : consultation_id // ignore: cast_nullable_to_non_nullable
              as String,
      consultation_name: null == consultation_name
          ? _value.consultation_name
          : consultation_name // ignore: cast_nullable_to_non_nullable
              as String,
      service_id: null == service_id
          ? _value.service_id
          : service_id // ignore: cast_nullable_to_non_nullable
              as String,
      service_name: null == service_name
          ? _value.service_name
          : service_name // ignore: cast_nullable_to_non_nullable
              as String,
      cat_id: null == cat_id
          ? _value.cat_id
          : cat_id // ignore: cast_nullable_to_non_nullable
              as String,
      category_name: null == category_name
          ? _value.category_name
          : category_name // ignore: cast_nullable_to_non_nullable
              as String,
      consultation_image: null == consultation_image
          ? _value.consultation_image
          : consultation_image // ignore: cast_nullable_to_non_nullable
              as String,
      service_images: null == service_images
          ? _value.service_images
          : service_images // ignore: cast_nullable_to_non_nullable
              as String,
      category_image: null == category_image
          ? _value.category_image
          : category_image // ignore: cast_nullable_to_non_nullable
              as String,
      transaction_id: null == transaction_id
          ? _value.transaction_id
          : transaction_id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingResponseDataImpl implements _BookingResponseData {
  const _$BookingResponseDataImpl(
      {@JsonKey(name: 'id') this.id = 0,
      @JsonKey(name: 'name') this.name = '',
      @JsonKey(name: 'email') this.email = '',
      @JsonKey(name: 'phone') this.phone = '',
      @JsonKey(name: 'total_amount') this.total_amount = '',
      @JsonKey(name: 'booking_date') this.booking_date = '',
      @JsonKey(name: 'booking_type') this.booking_type = '',
      @JsonKey(name: 'booking_status') this.booking_status = '',
      @JsonKey(name: 'timeslot_id') this.timeslot_id = '',
      @JsonKey(name: 'timeslot') this.timeslot = '',
      @JsonKey(name: 'timeslot_from') this.timeslot_from = '',
      @JsonKey(name: 'timeslot_to') this.timeslot_to = '',
      @JsonKey(name: 'consultation_id') this.consultation_id = '',
      @JsonKey(name: 'consultation_name') this.consultation_name = '',
      @JsonKey(name: 'service_id') this.service_id = '',
      @JsonKey(name: 'service_name') this.service_name = '',
      @JsonKey(name: 'cat_id') this.cat_id = '0',
      @JsonKey(name: 'category_name') this.category_name = '',
      @JsonKey(name: 'consultation_image') this.consultation_image = '',
      @JsonKey(name: 'service_images') this.service_images = '',
      @JsonKey(name: 'category_image') this.category_image = '',
      @JsonKey(name: 'transaction_id') this.transaction_id = ''});

  factory _$BookingResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingResponseDataImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'email')
  final String email;
  @override
  @JsonKey(name: 'phone')
  final String phone;
  @override
  @JsonKey(name: 'total_amount')
  final String total_amount;
  @override
  @JsonKey(name: 'booking_date')
  final String booking_date;
  @override
  @JsonKey(name: 'booking_type')
  final String booking_type;
  @override
  @JsonKey(name: 'booking_status')
  final String booking_status;
  @override
  @JsonKey(name: 'timeslot_id')
  final String timeslot_id;
  @override
  @JsonKey(name: 'timeslot')
  final String timeslot;
  @override
  @JsonKey(name: 'timeslot_from')
  final String timeslot_from;
  @override
  @JsonKey(name: 'timeslot_to')
  final String timeslot_to;
  @override
  @JsonKey(name: 'consultation_id')
  final String consultation_id;
  @override
  @JsonKey(name: 'consultation_name')
  final String consultation_name;
  @override
  @JsonKey(name: 'service_id')
  final String service_id;
  @override
  @JsonKey(name: 'service_name')
  final String service_name;
  @override
  @JsonKey(name: 'cat_id')
  final String cat_id;
  @override
  @JsonKey(name: 'category_name')
  final String category_name;
  @override
  @JsonKey(name: 'consultation_image')
  final String consultation_image;
  @override
  @JsonKey(name: 'service_images')
  final String service_images;
  @override
  @JsonKey(name: 'category_image')
  final String category_image;
  @override
  @JsonKey(name: 'transaction_id')
  final String transaction_id;

  @override
  String toString() {
    return 'BookingResponseData(id: $id, name: $name, email: $email, phone: $phone, total_amount: $total_amount, booking_date: $booking_date, booking_type: $booking_type, booking_status: $booking_status, timeslot_id: $timeslot_id, timeslot: $timeslot, timeslot_from: $timeslot_from, timeslot_to: $timeslot_to, consultation_id: $consultation_id, consultation_name: $consultation_name, service_id: $service_id, service_name: $service_name, cat_id: $cat_id, category_name: $category_name, consultation_image: $consultation_image, service_images: $service_images, category_image: $category_image, transaction_id: $transaction_id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingResponseDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.total_amount, total_amount) ||
                other.total_amount == total_amount) &&
            (identical(other.booking_date, booking_date) ||
                other.booking_date == booking_date) &&
            (identical(other.booking_type, booking_type) ||
                other.booking_type == booking_type) &&
            (identical(other.booking_status, booking_status) ||
                other.booking_status == booking_status) &&
            (identical(other.timeslot_id, timeslot_id) ||
                other.timeslot_id == timeslot_id) &&
            (identical(other.timeslot, timeslot) ||
                other.timeslot == timeslot) &&
            (identical(other.timeslot_from, timeslot_from) ||
                other.timeslot_from == timeslot_from) &&
            (identical(other.timeslot_to, timeslot_to) ||
                other.timeslot_to == timeslot_to) &&
            (identical(other.consultation_id, consultation_id) ||
                other.consultation_id == consultation_id) &&
            (identical(other.consultation_name, consultation_name) ||
                other.consultation_name == consultation_name) &&
            (identical(other.service_id, service_id) ||
                other.service_id == service_id) &&
            (identical(other.service_name, service_name) ||
                other.service_name == service_name) &&
            (identical(other.cat_id, cat_id) || other.cat_id == cat_id) &&
            (identical(other.category_name, category_name) ||
                other.category_name == category_name) &&
            (identical(other.consultation_image, consultation_image) ||
                other.consultation_image == consultation_image) &&
            (identical(other.service_images, service_images) ||
                other.service_images == service_images) &&
            (identical(other.category_image, category_image) ||
                other.category_image == category_image) &&
            (identical(other.transaction_id, transaction_id) ||
                other.transaction_id == transaction_id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        email,
        phone,
        total_amount,
        booking_date,
        booking_type,
        booking_status,
        timeslot_id,
        timeslot,
        timeslot_from,
        timeslot_to,
        consultation_id,
        consultation_name,
        service_id,
        service_name,
        cat_id,
        category_name,
        consultation_image,
        service_images,
        category_image,
        transaction_id
      ]);

  /// Create a copy of BookingResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingResponseDataImplCopyWith<_$BookingResponseDataImpl> get copyWith =>
      __$$BookingResponseDataImplCopyWithImpl<_$BookingResponseDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingResponseDataImplToJson(
      this,
    );
  }
}

abstract class _BookingResponseData implements BookingResponseData {
  const factory _BookingResponseData(
          {@JsonKey(name: 'id') final int id,
          @JsonKey(name: 'name') final String name,
          @JsonKey(name: 'email') final String email,
          @JsonKey(name: 'phone') final String phone,
          @JsonKey(name: 'total_amount') final String total_amount,
          @JsonKey(name: 'booking_date') final String booking_date,
          @JsonKey(name: 'booking_type') final String booking_type,
          @JsonKey(name: 'booking_status') final String booking_status,
          @JsonKey(name: 'timeslot_id') final String timeslot_id,
          @JsonKey(name: 'timeslot') final String timeslot,
          @JsonKey(name: 'timeslot_from') final String timeslot_from,
          @JsonKey(name: 'timeslot_to') final String timeslot_to,
          @JsonKey(name: 'consultation_id') final String consultation_id,
          @JsonKey(name: 'consultation_name') final String consultation_name,
          @JsonKey(name: 'service_id') final String service_id,
          @JsonKey(name: 'service_name') final String service_name,
          @JsonKey(name: 'cat_id') final String cat_id,
          @JsonKey(name: 'category_name') final String category_name,
          @JsonKey(name: 'consultation_image') final String consultation_image,
          @JsonKey(name: 'service_images') final String service_images,
          @JsonKey(name: 'category_image') final String category_image,
          @JsonKey(name: 'transaction_id') final String transaction_id}) =
      _$BookingResponseDataImpl;

  factory _BookingResponseData.fromJson(Map<String, dynamic> json) =
      _$BookingResponseDataImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'email')
  String get email;
  @override
  @JsonKey(name: 'phone')
  String get phone;
  @override
  @JsonKey(name: 'total_amount')
  String get total_amount;
  @override
  @JsonKey(name: 'booking_date')
  String get booking_date;
  @override
  @JsonKey(name: 'booking_type')
  String get booking_type;
  @override
  @JsonKey(name: 'booking_status')
  String get booking_status;
  @override
  @JsonKey(name: 'timeslot_id')
  String get timeslot_id;
  @override
  @JsonKey(name: 'timeslot')
  String get timeslot;
  @override
  @JsonKey(name: 'timeslot_from')
  String get timeslot_from;
  @override
  @JsonKey(name: 'timeslot_to')
  String get timeslot_to;
  @override
  @JsonKey(name: 'consultation_id')
  String get consultation_id;
  @override
  @JsonKey(name: 'consultation_name')
  String get consultation_name;
  @override
  @JsonKey(name: 'service_id')
  String get service_id;
  @override
  @JsonKey(name: 'service_name')
  String get service_name;
  @override
  @JsonKey(name: 'cat_id')
  String get cat_id;
  @override
  @JsonKey(name: 'category_name')
  String get category_name;
  @override
  @JsonKey(name: 'consultation_image')
  String get consultation_image;
  @override
  @JsonKey(name: 'service_images')
  String get service_images;
  @override
  @JsonKey(name: 'category_image')
  String get category_image;
  @override
  @JsonKey(name: 'transaction_id')
  String get transaction_id;

  /// Create a copy of BookingResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookingResponseDataImplCopyWith<_$BookingResponseDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
