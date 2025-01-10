// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'services.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ServicesModel _$ServicesModelFromJson(Map<String, dynamic> json) {
  return _ServicesModel.fromJson(json);
}

/// @nodoc
mixin _$ServicesModel {
  @JsonKey(name: 'success')
  bool get success => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'response')
  ServicesResponse get consultResponse => throw _privateConstructorUsedError;

  /// Serializes this ServicesModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ServicesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServicesModelCopyWith<ServicesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServicesModelCopyWith<$Res> {
  factory $ServicesModelCopyWith(
          ServicesModel value, $Res Function(ServicesModel) then) =
      _$ServicesModelCopyWithImpl<$Res, ServicesModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool success,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'response') ServicesResponse consultResponse});

  $ServicesResponseCopyWith<$Res> get consultResponse;
}

/// @nodoc
class _$ServicesModelCopyWithImpl<$Res, $Val extends ServicesModel>
    implements $ServicesModelCopyWith<$Res> {
  _$ServicesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServicesModel
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
              as ServicesResponse,
    ) as $Val);
  }

  /// Create a copy of ServicesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ServicesResponseCopyWith<$Res> get consultResponse {
    return $ServicesResponseCopyWith<$Res>(_value.consultResponse, (value) {
      return _then(_value.copyWith(consultResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ServicesModelImplCopyWith<$Res>
    implements $ServicesModelCopyWith<$Res> {
  factory _$$ServicesModelImplCopyWith(
          _$ServicesModelImpl value, $Res Function(_$ServicesModelImpl) then) =
      __$$ServicesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool success,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'response') ServicesResponse consultResponse});

  @override
  $ServicesResponseCopyWith<$Res> get consultResponse;
}

/// @nodoc
class __$$ServicesModelImplCopyWithImpl<$Res>
    extends _$ServicesModelCopyWithImpl<$Res, _$ServicesModelImpl>
    implements _$$ServicesModelImplCopyWith<$Res> {
  __$$ServicesModelImplCopyWithImpl(
      _$ServicesModelImpl _value, $Res Function(_$ServicesModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServicesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = null,
    Object? consultResponse = null,
  }) {
    return _then(_$ServicesModelImpl(
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
              as ServicesResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServicesModelImpl implements _ServicesModel {
  _$ServicesModelImpl(
      {@JsonKey(name: 'success') this.success = false,
      @JsonKey(name: 'message') this.message = '',
      @JsonKey(name: 'response')
      this.consultResponse = const ServicesResponse()});

  factory _$ServicesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServicesModelImplFromJson(json);

  @override
  @JsonKey(name: 'success')
  final bool success;
  @override
  @JsonKey(name: 'message')
  final String message;
  @override
  @JsonKey(name: 'response')
  final ServicesResponse consultResponse;

  @override
  String toString() {
    return 'ServicesModel(success: $success, message: $message, consultResponse: $consultResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServicesModelImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.consultResponse, consultResponse) ||
                other.consultResponse == consultResponse));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, success, message, consultResponse);

  /// Create a copy of ServicesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServicesModelImplCopyWith<_$ServicesModelImpl> get copyWith =>
      __$$ServicesModelImplCopyWithImpl<_$ServicesModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServicesModelImplToJson(
      this,
    );
  }
}

abstract class _ServicesModel implements ServicesModel {
  factory _ServicesModel(
          {@JsonKey(name: 'success') final bool success,
          @JsonKey(name: 'message') final String message,
          @JsonKey(name: 'response') final ServicesResponse consultResponse}) =
      _$ServicesModelImpl;

  factory _ServicesModel.fromJson(Map<String, dynamic> json) =
      _$ServicesModelImpl.fromJson;

  @override
  @JsonKey(name: 'success')
  bool get success;
  @override
  @JsonKey(name: 'message')
  String get message;
  @override
  @JsonKey(name: 'response')
  ServicesResponse get consultResponse;

  /// Create a copy of ServicesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServicesModelImplCopyWith<_$ServicesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ServicesResponse _$ServicesResponseFromJson(Map<String, dynamic> json) {
  return _ServicesResponse.fromJson(json);
}

/// @nodoc
mixin _$ServicesResponse {
  @JsonKey(name: 'data')
  List<ServicesResponseData> get data => throw _privateConstructorUsedError;

  /// Serializes this ServicesResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ServicesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServicesResponseCopyWith<ServicesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServicesResponseCopyWith<$Res> {
  factory $ServicesResponseCopyWith(
          ServicesResponse value, $Res Function(ServicesResponse) then) =
      _$ServicesResponseCopyWithImpl<$Res, ServicesResponse>;
  @useResult
  $Res call({@JsonKey(name: 'data') List<ServicesResponseData> data});
}

/// @nodoc
class _$ServicesResponseCopyWithImpl<$Res, $Val extends ServicesResponse>
    implements $ServicesResponseCopyWith<$Res> {
  _$ServicesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServicesResponse
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
              as List<ServicesResponseData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServicesResponseImplCopyWith<$Res>
    implements $ServicesResponseCopyWith<$Res> {
  factory _$$ServicesResponseImplCopyWith(_$ServicesResponseImpl value,
          $Res Function(_$ServicesResponseImpl) then) =
      __$$ServicesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'data') List<ServicesResponseData> data});
}

/// @nodoc
class __$$ServicesResponseImplCopyWithImpl<$Res>
    extends _$ServicesResponseCopyWithImpl<$Res, _$ServicesResponseImpl>
    implements _$$ServicesResponseImplCopyWith<$Res> {
  __$$ServicesResponseImplCopyWithImpl(_$ServicesResponseImpl _value,
      $Res Function(_$ServicesResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServicesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$ServicesResponseImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ServicesResponseData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServicesResponseImpl implements _ServicesResponse {
  const _$ServicesResponseImpl(
      {@JsonKey(name: 'data') final List<ServicesResponseData> data = const []})
      : _data = data;

  factory _$ServicesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServicesResponseImplFromJson(json);

  final List<ServicesResponseData> _data;
  @override
  @JsonKey(name: 'data')
  List<ServicesResponseData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'ServicesResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServicesResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of ServicesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServicesResponseImplCopyWith<_$ServicesResponseImpl> get copyWith =>
      __$$ServicesResponseImplCopyWithImpl<_$ServicesResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServicesResponseImplToJson(
      this,
    );
  }
}

abstract class _ServicesResponse implements ServicesResponse {
  const factory _ServicesResponse(
          {@JsonKey(name: 'data') final List<ServicesResponseData> data}) =
      _$ServicesResponseImpl;

  factory _ServicesResponse.fromJson(Map<String, dynamic> json) =
      _$ServicesResponseImpl.fromJson;

  @override
  @JsonKey(name: 'data')
  List<ServicesResponseData> get data;

  /// Create a copy of ServicesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServicesResponseImplCopyWith<_$ServicesResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ServicesResponseData _$ServicesResponseDataFromJson(Map<String, dynamic> json) {
  return _ServicesResponseData.fromJson(json);
}

/// @nodoc
mixin _$ServicesResponseData {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'bprice')
  String get bprice => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  String get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'images')
  String get images => throw _privateConstructorUsedError;

  /// Serializes this ServicesResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ServicesResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServicesResponseDataCopyWith<ServicesResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServicesResponseDataCopyWith<$Res> {
  factory $ServicesResponseDataCopyWith(ServicesResponseData value,
          $Res Function(ServicesResponseData) then) =
      _$ServicesResponseDataCopyWithImpl<$Res, ServicesResponseData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'bprice') String bprice,
      @JsonKey(name: 'price') String price,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'images') String images});
}

/// @nodoc
class _$ServicesResponseDataCopyWithImpl<$Res,
        $Val extends ServicesResponseData>
    implements $ServicesResponseDataCopyWith<$Res> {
  _$ServicesResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ServicesResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? bprice = null,
    Object? price = null,
    Object? description = null,
    Object? images = null,
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
      bprice: null == bprice
          ? _value.bprice
          : bprice // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServicesResponseDataImplCopyWith<$Res>
    implements $ServicesResponseDataCopyWith<$Res> {
  factory _$$ServicesResponseDataImplCopyWith(_$ServicesResponseDataImpl value,
          $Res Function(_$ServicesResponseDataImpl) then) =
      __$$ServicesResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'bprice') String bprice,
      @JsonKey(name: 'price') String price,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'images') String images});
}

/// @nodoc
class __$$ServicesResponseDataImplCopyWithImpl<$Res>
    extends _$ServicesResponseDataCopyWithImpl<$Res, _$ServicesResponseDataImpl>
    implements _$$ServicesResponseDataImplCopyWith<$Res> {
  __$$ServicesResponseDataImplCopyWithImpl(_$ServicesResponseDataImpl _value,
      $Res Function(_$ServicesResponseDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ServicesResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? bprice = null,
    Object? price = null,
    Object? description = null,
    Object? images = null,
  }) {
    return _then(_$ServicesResponseDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      bprice: null == bprice
          ? _value.bprice
          : bprice // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServicesResponseDataImpl implements _ServicesResponseData {
  _$ServicesResponseDataImpl(
      {@JsonKey(name: 'id') this.id = 0,
      @JsonKey(name: 'name') this.name = '',
      @JsonKey(name: 'bprice') this.bprice = '',
      @JsonKey(name: 'price') this.price = '',
      @JsonKey(name: 'description') this.description = '',
      @JsonKey(name: 'images') this.images = ''});

  factory _$ServicesResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServicesResponseDataImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'bprice')
  final String bprice;
  @override
  @JsonKey(name: 'price')
  final String price;
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'images')
  final String images;

  @override
  String toString() {
    return 'ServicesResponseData(id: $id, name: $name, bprice: $bprice, price: $price, description: $description, images: $images)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServicesResponseDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.bprice, bprice) || other.bprice == bprice) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.images, images) || other.images == images));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, bprice, price, description, images);

  /// Create a copy of ServicesResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServicesResponseDataImplCopyWith<_$ServicesResponseDataImpl>
      get copyWith =>
          __$$ServicesResponseDataImplCopyWithImpl<_$ServicesResponseDataImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServicesResponseDataImplToJson(
      this,
    );
  }
}

abstract class _ServicesResponseData implements ServicesResponseData {
  factory _ServicesResponseData(
          {@JsonKey(name: 'id') final int id,
          @JsonKey(name: 'name') final String name,
          @JsonKey(name: 'bprice') final String bprice,
          @JsonKey(name: 'price') final String price,
          @JsonKey(name: 'description') final String description,
          @JsonKey(name: 'images') final String images}) =
      _$ServicesResponseDataImpl;

  factory _ServicesResponseData.fromJson(Map<String, dynamic> json) =
      _$ServicesResponseDataImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'bprice')
  String get bprice;
  @override
  @JsonKey(name: 'price')
  String get price;
  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(name: 'images')
  String get images;

  /// Create a copy of ServicesResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServicesResponseDataImplCopyWith<_$ServicesResponseDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
