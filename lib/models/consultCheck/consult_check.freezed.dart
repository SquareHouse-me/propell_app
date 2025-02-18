// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'consult_check.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConsultCheckModel _$ConsultCheckModelFromJson(Map<String, dynamic> json) {
  return _ConsultCheckModel.fromJson(json);
}

/// @nodoc
mixin _$ConsultCheckModel {
  @JsonKey(name: 'success')
  bool get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'response')
  ConsultCheckResponse get consultResponse =>
      throw _privateConstructorUsedError;

  /// Serializes this ConsultCheckModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConsultCheckModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConsultCheckModelCopyWith<ConsultCheckModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultCheckModelCopyWith<$Res> {
  factory $ConsultCheckModelCopyWith(
          ConsultCheckModel value, $Res Function(ConsultCheckModel) then) =
      _$ConsultCheckModelCopyWithImpl<$Res, ConsultCheckModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool success,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'response') ConsultCheckResponse consultResponse});

  $ConsultCheckResponseCopyWith<$Res> get consultResponse;
}

/// @nodoc
class _$ConsultCheckModelCopyWithImpl<$Res, $Val extends ConsultCheckModel>
    implements $ConsultCheckModelCopyWith<$Res> {
  _$ConsultCheckModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConsultCheckModel
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
              as ConsultCheckResponse,
    ) as $Val);
  }

  /// Create a copy of ConsultCheckModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ConsultCheckResponseCopyWith<$Res> get consultResponse {
    return $ConsultCheckResponseCopyWith<$Res>(_value.consultResponse, (value) {
      return _then(_value.copyWith(consultResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConsultCheckModelImplCopyWith<$Res>
    implements $ConsultCheckModelCopyWith<$Res> {
  factory _$$ConsultCheckModelImplCopyWith(_$ConsultCheckModelImpl value,
          $Res Function(_$ConsultCheckModelImpl) then) =
      __$$ConsultCheckModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool success,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'response') ConsultCheckResponse consultResponse});

  @override
  $ConsultCheckResponseCopyWith<$Res> get consultResponse;
}

/// @nodoc
class __$$ConsultCheckModelImplCopyWithImpl<$Res>
    extends _$ConsultCheckModelCopyWithImpl<$Res, _$ConsultCheckModelImpl>
    implements _$$ConsultCheckModelImplCopyWith<$Res> {
  __$$ConsultCheckModelImplCopyWithImpl(_$ConsultCheckModelImpl _value,
      $Res Function(_$ConsultCheckModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConsultCheckModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? consultResponse = null,
  }) {
    return _then(_$ConsultCheckModelImpl(
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
              as ConsultCheckResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsultCheckModelImpl implements _ConsultCheckModel {
  _$ConsultCheckModelImpl(
      {@JsonKey(name: 'success') this.success = false,
      @JsonKey(name: 'message') this.message = '',
      @JsonKey(name: 'response')
      this.consultResponse = const ConsultCheckResponse()});

  factory _$ConsultCheckModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConsultCheckModelImplFromJson(json);

  @override
  @JsonKey(name: 'success')
  final bool success;
  @override
  @JsonKey(name: 'message')
  final String message;
  @override
  @JsonKey(name: 'response')
  final ConsultCheckResponse consultResponse;

  @override
  String toString() {
    return 'ConsultCheckModel(success: $success, message: $message, consultResponse: $consultResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultCheckModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.consultResponse, consultResponse) ||
                other.consultResponse == consultResponse));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, success, message, consultResponse);

  /// Create a copy of ConsultCheckModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultCheckModelImplCopyWith<_$ConsultCheckModelImpl> get copyWith =>
      __$$ConsultCheckModelImplCopyWithImpl<_$ConsultCheckModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultCheckModelImplToJson(
      this,
    );
  }
}

abstract class _ConsultCheckModel implements ConsultCheckModel {
  factory _ConsultCheckModel(
      {@JsonKey(name: 'success') final bool success,
      @JsonKey(name: 'message') final String message,
      @JsonKey(name: 'response')
      final ConsultCheckResponse consultResponse}) = _$ConsultCheckModelImpl;

  factory _ConsultCheckModel.fromJson(Map<String, dynamic> json) =
      _$ConsultCheckModelImpl.fromJson;

  @override
  @JsonKey(name: 'success')
  bool get success;
  @override
  @JsonKey(name: 'message')
  String get message;
  @override
  @JsonKey(name: 'response')
  ConsultCheckResponse get consultResponse;

  /// Create a copy of ConsultCheckModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConsultCheckModelImplCopyWith<_$ConsultCheckModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ConsultCheckResponse _$ConsultCheckResponseFromJson(Map<String, dynamic> json) {
  return _ConsultCheckResponse.fromJson(json);
}

/// @nodoc
mixin _$ConsultCheckResponse {
  @JsonKey(name: 'holi_day_title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'holi_day_content')
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'holi_day_status')
  String get status => throw _privateConstructorUsedError;

  /// Serializes this ConsultCheckResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConsultCheckResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConsultCheckResponseCopyWith<ConsultCheckResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConsultCheckResponseCopyWith<$Res> {
  factory $ConsultCheckResponseCopyWith(ConsultCheckResponse value,
          $Res Function(ConsultCheckResponse) then) =
      _$ConsultCheckResponseCopyWithImpl<$Res, ConsultCheckResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'holi_day_title') String title,
      @JsonKey(name: 'holi_day_content') String content,
      @JsonKey(name: 'holi_day_status') String status});
}

/// @nodoc
class _$ConsultCheckResponseCopyWithImpl<$Res,
        $Val extends ConsultCheckResponse>
    implements $ConsultCheckResponseCopyWith<$Res> {
  _$ConsultCheckResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConsultCheckResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConsultCheckResponseImplCopyWith<$Res>
    implements $ConsultCheckResponseCopyWith<$Res> {
  factory _$$ConsultCheckResponseImplCopyWith(_$ConsultCheckResponseImpl value,
          $Res Function(_$ConsultCheckResponseImpl) then) =
      __$$ConsultCheckResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'holi_day_title') String title,
      @JsonKey(name: 'holi_day_content') String content,
      @JsonKey(name: 'holi_day_status') String status});
}

/// @nodoc
class __$$ConsultCheckResponseImplCopyWithImpl<$Res>
    extends _$ConsultCheckResponseCopyWithImpl<$Res, _$ConsultCheckResponseImpl>
    implements _$$ConsultCheckResponseImplCopyWith<$Res> {
  __$$ConsultCheckResponseImplCopyWithImpl(_$ConsultCheckResponseImpl _value,
      $Res Function(_$ConsultCheckResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConsultCheckResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
    Object? status = null,
  }) {
    return _then(_$ConsultCheckResponseImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConsultCheckResponseImpl implements _ConsultCheckResponse {
  const _$ConsultCheckResponseImpl(
      {@JsonKey(name: 'holi_day_title') this.title = '',
      @JsonKey(name: 'holi_day_content') this.content = '',
      @JsonKey(name: 'holi_day_status') this.status = ''});

  factory _$ConsultCheckResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConsultCheckResponseImplFromJson(json);

  @override
  @JsonKey(name: 'holi_day_title')
  final String title;
  @override
  @JsonKey(name: 'holi_day_content')
  final String content;
  @override
  @JsonKey(name: 'holi_day_status')
  final String status;

  @override
  String toString() {
    return 'ConsultCheckResponse(title: $title, content: $content, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConsultCheckResponseImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, content, status);

  /// Create a copy of ConsultCheckResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConsultCheckResponseImplCopyWith<_$ConsultCheckResponseImpl>
      get copyWith =>
          __$$ConsultCheckResponseImplCopyWithImpl<_$ConsultCheckResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConsultCheckResponseImplToJson(
      this,
    );
  }
}

abstract class _ConsultCheckResponse implements ConsultCheckResponse {
  const factory _ConsultCheckResponse(
          {@JsonKey(name: 'holi_day_title') final String title,
          @JsonKey(name: 'holi_day_content') final String content,
          @JsonKey(name: 'holi_day_status') final String status}) =
      _$ConsultCheckResponseImpl;

  factory _ConsultCheckResponse.fromJson(Map<String, dynamic> json) =
      _$ConsultCheckResponseImpl.fromJson;

  @override
  @JsonKey(name: 'holi_day_title')
  String get title;
  @override
  @JsonKey(name: 'holi_day_content')
  String get content;
  @override
  @JsonKey(name: 'holi_day_status')
  String get status;

  /// Create a copy of ConsultCheckResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConsultCheckResponseImplCopyWith<_$ConsultCheckResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
