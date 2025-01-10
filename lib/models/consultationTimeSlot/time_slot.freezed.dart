// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'time_slot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TimeSlotModel _$TimeSlotModelFromJson(Map<String, dynamic> json) {
  return _TimeSlotModel.fromJson(json);
}

/// @nodoc
mixin _$TimeSlotModel {
  @JsonKey(name: 'success')
  bool get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'response')
  List<TimeSlotResponseData> get timeSlotModelResponse =>
      throw _privateConstructorUsedError;

  /// Serializes this TimeSlotModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TimeSlotModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimeSlotModelCopyWith<TimeSlotModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeSlotModelCopyWith<$Res> {
  factory $TimeSlotModelCopyWith(
          TimeSlotModel value, $Res Function(TimeSlotModel) then) =
      _$TimeSlotModelCopyWithImpl<$Res, TimeSlotModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool success,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'response')
      List<TimeSlotResponseData> timeSlotModelResponse});
}

/// @nodoc
class _$TimeSlotModelCopyWithImpl<$Res, $Val extends TimeSlotModel>
    implements $TimeSlotModelCopyWith<$Res> {
  _$TimeSlotModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimeSlotModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? timeSlotModelResponse = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      timeSlotModelResponse: null == timeSlotModelResponse
          ? _value.timeSlotModelResponse
          : timeSlotModelResponse // ignore: cast_nullable_to_non_nullable
              as List<TimeSlotResponseData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimeSlotModelImplCopyWith<$Res>
    implements $TimeSlotModelCopyWith<$Res> {
  factory _$$TimeSlotModelImplCopyWith(
          _$TimeSlotModelImpl value, $Res Function(_$TimeSlotModelImpl) then) =
      __$$TimeSlotModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool success,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'response')
      List<TimeSlotResponseData> timeSlotModelResponse});
}

/// @nodoc
class __$$TimeSlotModelImplCopyWithImpl<$Res>
    extends _$TimeSlotModelCopyWithImpl<$Res, _$TimeSlotModelImpl>
    implements _$$TimeSlotModelImplCopyWith<$Res> {
  __$$TimeSlotModelImplCopyWithImpl(
      _$TimeSlotModelImpl _value, $Res Function(_$TimeSlotModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimeSlotModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? timeSlotModelResponse = null,
  }) {
    return _then(_$TimeSlotModelImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      timeSlotModelResponse: null == timeSlotModelResponse
          ? _value._timeSlotModelResponse
          : timeSlotModelResponse // ignore: cast_nullable_to_non_nullable
              as List<TimeSlotResponseData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimeSlotModelImpl implements _TimeSlotModel {
  _$TimeSlotModelImpl(
      {@JsonKey(name: 'success') this.success = false,
      @JsonKey(name: 'message') this.message = '',
      @JsonKey(name: 'response')
      final List<TimeSlotResponseData> timeSlotModelResponse = const []})
      : _timeSlotModelResponse = timeSlotModelResponse;

  factory _$TimeSlotModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimeSlotModelImplFromJson(json);

  @override
  @JsonKey(name: 'success')
  final bool success;
  @override
  @JsonKey(name: 'message')
  final String message;
  final List<TimeSlotResponseData> _timeSlotModelResponse;
  @override
  @JsonKey(name: 'response')
  List<TimeSlotResponseData> get timeSlotModelResponse {
    if (_timeSlotModelResponse is EqualUnmodifiableListView)
      return _timeSlotModelResponse;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_timeSlotModelResponse);
  }

  @override
  String toString() {
    return 'TimeSlotModel(success: $success, message: $message, timeSlotModelResponse: $timeSlotModelResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeSlotModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._timeSlotModelResponse, _timeSlotModelResponse));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, message,
      const DeepCollectionEquality().hash(_timeSlotModelResponse));

  /// Create a copy of TimeSlotModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeSlotModelImplCopyWith<_$TimeSlotModelImpl> get copyWith =>
      __$$TimeSlotModelImplCopyWithImpl<_$TimeSlotModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimeSlotModelImplToJson(
      this,
    );
  }
}

abstract class _TimeSlotModel implements TimeSlotModel {
  factory _TimeSlotModel(
          {@JsonKey(name: 'success') final bool success,
          @JsonKey(name: 'message') final String message,
          @JsonKey(name: 'response')
          final List<TimeSlotResponseData> timeSlotModelResponse}) =
      _$TimeSlotModelImpl;

  factory _TimeSlotModel.fromJson(Map<String, dynamic> json) =
      _$TimeSlotModelImpl.fromJson;

  @override
  @JsonKey(name: 'success')
  bool get success;
  @override
  @JsonKey(name: 'message')
  String get message;
  @override
  @JsonKey(name: 'response')
  List<TimeSlotResponseData> get timeSlotModelResponse;

  /// Create a copy of TimeSlotModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimeSlotModelImplCopyWith<_$TimeSlotModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TimeSlotResponseData _$TimeSlotResponseDataFromJson(Map<String, dynamic> json) {
  return _TimeSlotResponseData.fromJson(json);
}

/// @nodoc
mixin _$TimeSlotResponseData {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'day')
  String get day => throw _privateConstructorUsedError;
  @JsonKey(name: 'from')
  String get from => throw _privateConstructorUsedError;
  @JsonKey(name: 'to')
  String get to => throw _privateConstructorUsedError;
  @JsonKey(name: 'timeslot')
  String get timeslot => throw _privateConstructorUsedError;
  @JsonKey(name: 'booked')
  int get isBooked => throw _privateConstructorUsedError;

  /// Serializes this TimeSlotResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TimeSlotResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimeSlotResponseDataCopyWith<TimeSlotResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeSlotResponseDataCopyWith<$Res> {
  factory $TimeSlotResponseDataCopyWith(TimeSlotResponseData value,
          $Res Function(TimeSlotResponseData) then) =
      _$TimeSlotResponseDataCopyWithImpl<$Res, TimeSlotResponseData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'day') String day,
      @JsonKey(name: 'from') String from,
      @JsonKey(name: 'to') String to,
      @JsonKey(name: 'timeslot') String timeslot,
      @JsonKey(name: 'booked') int isBooked});
}

/// @nodoc
class _$TimeSlotResponseDataCopyWithImpl<$Res,
        $Val extends TimeSlotResponseData>
    implements $TimeSlotResponseDataCopyWith<$Res> {
  _$TimeSlotResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimeSlotResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? day = null,
    Object? from = null,
    Object? to = null,
    Object? timeslot = null,
    Object? isBooked = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      timeslot: null == timeslot
          ? _value.timeslot
          : timeslot // ignore: cast_nullable_to_non_nullable
              as String,
      isBooked: null == isBooked
          ? _value.isBooked
          : isBooked // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimeSlotResponseDataImplCopyWith<$Res>
    implements $TimeSlotResponseDataCopyWith<$Res> {
  factory _$$TimeSlotResponseDataImplCopyWith(_$TimeSlotResponseDataImpl value,
          $Res Function(_$TimeSlotResponseDataImpl) then) =
      __$$TimeSlotResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'day') String day,
      @JsonKey(name: 'from') String from,
      @JsonKey(name: 'to') String to,
      @JsonKey(name: 'timeslot') String timeslot,
      @JsonKey(name: 'booked') int isBooked});
}

/// @nodoc
class __$$TimeSlotResponseDataImplCopyWithImpl<$Res>
    extends _$TimeSlotResponseDataCopyWithImpl<$Res, _$TimeSlotResponseDataImpl>
    implements _$$TimeSlotResponseDataImplCopyWith<$Res> {
  __$$TimeSlotResponseDataImplCopyWithImpl(_$TimeSlotResponseDataImpl _value,
      $Res Function(_$TimeSlotResponseDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimeSlotResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? day = null,
    Object? from = null,
    Object? to = null,
    Object? timeslot = null,
    Object? isBooked = null,
  }) {
    return _then(_$TimeSlotResponseDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      timeslot: null == timeslot
          ? _value.timeslot
          : timeslot // ignore: cast_nullable_to_non_nullable
              as String,
      isBooked: null == isBooked
          ? _value.isBooked
          : isBooked // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimeSlotResponseDataImpl implements _TimeSlotResponseData {
  _$TimeSlotResponseDataImpl(
      {@JsonKey(name: 'id') this.id = 0,
      @JsonKey(name: 'day') this.day = '',
      @JsonKey(name: 'from') this.from = '',
      @JsonKey(name: 'to') this.to = '',
      @JsonKey(name: 'timeslot') this.timeslot = '',
      @JsonKey(name: 'booked') this.isBooked = 0});

  factory _$TimeSlotResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimeSlotResponseDataImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'day')
  final String day;
  @override
  @JsonKey(name: 'from')
  final String from;
  @override
  @JsonKey(name: 'to')
  final String to;
  @override
  @JsonKey(name: 'timeslot')
  final String timeslot;
  @override
  @JsonKey(name: 'booked')
  final int isBooked;

  @override
  String toString() {
    return 'TimeSlotResponseData(id: $id, day: $day, from: $from, to: $to, timeslot: $timeslot, isBooked: $isBooked)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeSlotResponseDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.timeslot, timeslot) ||
                other.timeslot == timeslot) &&
            (identical(other.isBooked, isBooked) ||
                other.isBooked == isBooked));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, day, from, to, timeslot, isBooked);

  /// Create a copy of TimeSlotResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeSlotResponseDataImplCopyWith<_$TimeSlotResponseDataImpl>
      get copyWith =>
          __$$TimeSlotResponseDataImplCopyWithImpl<_$TimeSlotResponseDataImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimeSlotResponseDataImplToJson(
      this,
    );
  }
}

abstract class _TimeSlotResponseData implements TimeSlotResponseData {
  factory _TimeSlotResponseData(
          {@JsonKey(name: 'id') final int id,
          @JsonKey(name: 'day') final String day,
          @JsonKey(name: 'from') final String from,
          @JsonKey(name: 'to') final String to,
          @JsonKey(name: 'timeslot') final String timeslot,
          @JsonKey(name: 'booked') final int isBooked}) =
      _$TimeSlotResponseDataImpl;

  factory _TimeSlotResponseData.fromJson(Map<String, dynamic> json) =
      _$TimeSlotResponseDataImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'day')
  String get day;
  @override
  @JsonKey(name: 'from')
  String get from;
  @override
  @JsonKey(name: 'to')
  String get to;
  @override
  @JsonKey(name: 'timeslot')
  String get timeslot;
  @override
  @JsonKey(name: 'booked')
  int get isBooked;

  /// Create a copy of TimeSlotResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimeSlotResponseDataImplCopyWith<_$TimeSlotResponseDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
