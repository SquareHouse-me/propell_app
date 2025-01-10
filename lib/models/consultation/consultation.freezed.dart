// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'consultation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConsultationModel _$ConsultationModelFromJson(Map<String, dynamic> json) {
  return _ConsultationModel.fromJson(json);
}

/// @nodoc
mixin _$ConsultationModel {
  @JsonKey(name: 'success')
  bool get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'response')
  ConsultationResponse get consultResponse =>
      throw _privateConstructorUsedError;

  /// Serializes this ConsultationModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConsultationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConsultationModelCopyWith<ConsultationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultationModelCopyWith<$Res> {
  factory $ConsultationModelCopyWith(
          ConsultationModel value, $Res Function(ConsultationModel) then) =
      _$ConsultationModelCopyWithImpl<$Res, ConsultationModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool success,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'response') ConsultationResponse consultResponse});

  $ConsultationResponseCopyWith<$Res> get consultResponse;
}

/// @nodoc
class _$ConsultationModelCopyWithImpl<$Res, $Val extends ConsultationModel>
    implements $ConsultationModelCopyWith<$Res> {
  _$ConsultationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConsultationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? consultResponse = null,
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
      consultResponse: null == consultResponse
          ? _value.consultResponse
          : consultResponse // ignore: cast_nullable_to_non_nullable
              as ConsultationResponse,
    ) as $Val);
  }

  /// Create a copy of ConsultationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultationResponseCopyWith<$Res> get consultResponse {
    return $ConsultationResponseCopyWith<$Res>(_value.consultResponse, (value) {
      return _then(_value.copyWith(consultResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConsultationModelImplCopyWith<$Res>
    implements $ConsultationModelCopyWith<$Res> {
  factory _$$ConsultationModelImplCopyWith(_$ConsultationModelImpl value,
          $Res Function(_$ConsultationModelImpl) then) =
      __$$ConsultationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool success,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'response') ConsultationResponse consultResponse});

  @override
  $ConsultationResponseCopyWith<$Res> get consultResponse;
}

/// @nodoc
class __$$ConsultationModelImplCopyWithImpl<$Res>
    extends _$ConsultationModelCopyWithImpl<$Res, _$ConsultationModelImpl>
    implements _$$ConsultationModelImplCopyWith<$Res> {
  __$$ConsultationModelImplCopyWithImpl(_$ConsultationModelImpl _value,
      $Res Function(_$ConsultationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConsultationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? consultResponse = null,
  }) {
    return _then(_$ConsultationModelImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      consultResponse: null == consultResponse
          ? _value.consultResponse
          : consultResponse // ignore: cast_nullable_to_non_nullable
              as ConsultationResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsultationModelImpl implements _ConsultationModel {
  _$ConsultationModelImpl(
      {@JsonKey(name: 'success') this.success = false,
      @JsonKey(name: 'message') this.message = '',
      @JsonKey(name: 'response')
      this.consultResponse = const ConsultationResponse()});

  factory _$ConsultationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConsultationModelImplFromJson(json);

  @override
  @JsonKey(name: 'success')
  final bool success;
  @override
  @JsonKey(name: 'message')
  final String message;
  @override
  @JsonKey(name: 'response')
  final ConsultationResponse consultResponse;

  @override
  String toString() {
    return 'ConsultationModel(success: $success, message: $message, consultResponse: $consultResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultationModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.consultResponse, consultResponse) ||
                other.consultResponse == consultResponse));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, success, message, consultResponse);

  /// Create a copy of ConsultationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultationModelImplCopyWith<_$ConsultationModelImpl> get copyWith =>
      __$$ConsultationModelImplCopyWithImpl<_$ConsultationModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultationModelImplToJson(
      this,
    );
  }
}

abstract class _ConsultationModel implements ConsultationModel {
  factory _ConsultationModel(
      {@JsonKey(name: 'success') final bool success,
      @JsonKey(name: 'message') final String message,
      @JsonKey(name: 'response')
      final ConsultationResponse consultResponse}) = _$ConsultationModelImpl;

  factory _ConsultationModel.fromJson(Map<String, dynamic> json) =
      _$ConsultationModelImpl.fromJson;

  @override
  @JsonKey(name: 'success')
  bool get success;
  @override
  @JsonKey(name: 'message')
  String get message;
  @override
  @JsonKey(name: 'response')
  ConsultationResponse get consultResponse;

  /// Create a copy of ConsultationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConsultationModelImplCopyWith<_$ConsultationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ConsultationResponse _$ConsultationResponseFromJson(Map<String, dynamic> json) {
  return _ConsultationResponse.fromJson(json);
}

/// @nodoc
mixin _$ConsultationResponse {
  @JsonKey(name: 'data')
  List<ConsultationData> get data => throw _privateConstructorUsedError;

  /// Serializes this ConsultationResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConsultationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConsultationResponseCopyWith<ConsultationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultationResponseCopyWith<$Res> {
  factory $ConsultationResponseCopyWith(ConsultationResponse value,
          $Res Function(ConsultationResponse) then) =
      _$ConsultationResponseCopyWithImpl<$Res, ConsultationResponse>;
  @useResult
  $Res call({@JsonKey(name: 'data') List<ConsultationData> data});
}

/// @nodoc
class _$ConsultationResponseCopyWithImpl<$Res,
        $Val extends ConsultationResponse>
    implements $ConsultationResponseCopyWith<$Res> {
  _$ConsultationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConsultationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ConsultationData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConsultationResponseImplCopyWith<$Res>
    implements $ConsultationResponseCopyWith<$Res> {
  factory _$$ConsultationResponseImplCopyWith(_$ConsultationResponseImpl value,
          $Res Function(_$ConsultationResponseImpl) then) =
      __$$ConsultationResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'data') List<ConsultationData> data});
}

/// @nodoc
class __$$ConsultationResponseImplCopyWithImpl<$Res>
    extends _$ConsultationResponseCopyWithImpl<$Res, _$ConsultationResponseImpl>
    implements _$$ConsultationResponseImplCopyWith<$Res> {
  __$$ConsultationResponseImplCopyWithImpl(_$ConsultationResponseImpl _value,
      $Res Function(_$ConsultationResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConsultationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$ConsultationResponseImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ConsultationData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsultationResponseImpl implements _ConsultationResponse {
  const _$ConsultationResponseImpl(
      {@JsonKey(name: 'data') final List<ConsultationData> data = const []})
      : _data = data;

  factory _$ConsultationResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConsultationResponseImplFromJson(json);

  final List<ConsultationData> _data;
  @override
  @JsonKey(name: 'data')
  List<ConsultationData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'ConsultationResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultationResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of ConsultationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultationResponseImplCopyWith<_$ConsultationResponseImpl>
      get copyWith =>
          __$$ConsultationResponseImplCopyWithImpl<_$ConsultationResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultationResponseImplToJson(
      this,
    );
  }
}

abstract class _ConsultationResponse implements ConsultationResponse {
  const factory _ConsultationResponse(
          {@JsonKey(name: 'data') final List<ConsultationData> data}) =
      _$ConsultationResponseImpl;

  factory _ConsultationResponse.fromJson(Map<String, dynamic> json) =
      _$ConsultationResponseImpl.fromJson;

  @override
  @JsonKey(name: 'data')
  List<ConsultationData> get data;

  /// Create a copy of ConsultationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConsultationResponseImplCopyWith<_$ConsultationResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ConsultationData _$ConsultationDataFromJson(Map<String, dynamic> json) {
  return _ConsultationData.fromJson(json);
}

/// @nodoc
mixin _$ConsultationData {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'date')
  String get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'time')
  String get time => throw _privateConstructorUsedError;

  /// Serializes this ConsultationData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConsultationData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConsultationDataCopyWith<ConsultationData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultationDataCopyWith<$Res> {
  factory $ConsultationDataCopyWith(
          ConsultationData value, $Res Function(ConsultationData) then) =
      _$ConsultationDataCopyWithImpl<$Res, ConsultationData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'image') String image,
      @JsonKey(name: 'date') String date,
      @JsonKey(name: 'time') String time});
}

/// @nodoc
class _$ConsultationDataCopyWithImpl<$Res, $Val extends ConsultationData>
    implements $ConsultationDataCopyWith<$Res> {
  _$ConsultationDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConsultationData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? image = null,
    Object? date = null,
    Object? time = null,
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
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConsultationDataImplCopyWith<$Res>
    implements $ConsultationDataCopyWith<$Res> {
  factory _$$ConsultationDataImplCopyWith(_$ConsultationDataImpl value,
          $Res Function(_$ConsultationDataImpl) then) =
      __$$ConsultationDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'image') String image,
      @JsonKey(name: 'date') String date,
      @JsonKey(name: 'time') String time});
}

/// @nodoc
class __$$ConsultationDataImplCopyWithImpl<$Res>
    extends _$ConsultationDataCopyWithImpl<$Res, _$ConsultationDataImpl>
    implements _$$ConsultationDataImplCopyWith<$Res> {
  __$$ConsultationDataImplCopyWithImpl(_$ConsultationDataImpl _value,
      $Res Function(_$ConsultationDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConsultationData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? image = null,
    Object? date = null,
    Object? time = null,
  }) {
    return _then(_$ConsultationDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsultationDataImpl implements _ConsultationData {
  _$ConsultationDataImpl(
      {@JsonKey(name: 'id') this.id = 0,
      @JsonKey(name: 'name') this.name = '',
      @JsonKey(name: 'description') this.description = '',
      @JsonKey(name: 'image') this.image = '',
      @JsonKey(name: 'date') this.date = '',
      @JsonKey(name: 'time') this.time = ''});

  factory _$ConsultationDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConsultationDataImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'image')
  final String image;
  @override
  @JsonKey(name: 'date')
  final String date;
  @override
  @JsonKey(name: 'time')
  final String time;

  @override
  String toString() {
    return 'ConsultationData(id: $id, name: $name, description: $description, image: $image, date: $date, time: $time)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultationDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.time, time) || other.time == time));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, description, image, date, time);

  /// Create a copy of ConsultationData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultationDataImplCopyWith<_$ConsultationDataImpl> get copyWith =>
      __$$ConsultationDataImplCopyWithImpl<_$ConsultationDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultationDataImplToJson(
      this,
    );
  }
}

abstract class _ConsultationData implements ConsultationData {
  factory _ConsultationData(
      {@JsonKey(name: 'id') final int id,
      @JsonKey(name: 'name') final String name,
      @JsonKey(name: 'description') final String description,
      @JsonKey(name: 'image') final String image,
      @JsonKey(name: 'date') final String date,
      @JsonKey(name: 'time') final String time}) = _$ConsultationDataImpl;

  factory _ConsultationData.fromJson(Map<String, dynamic> json) =
      _$ConsultationDataImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(name: 'image')
  String get image;
  @override
  @JsonKey(name: 'date')
  String get date;
  @override
  @JsonKey(name: 'time')
  String get time;

  /// Create a copy of ConsultationData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConsultationDataImplCopyWith<_$ConsultationDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
