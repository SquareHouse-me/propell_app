// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) {
  return _CategoryModel.fromJson(json);
}

/// @nodoc
mixin _$CategoryModel {
  @JsonKey(name: 'success')
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'response')
  DataResponse get dataResponse => throw _privateConstructorUsedError;

  /// Serializes this CategoryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryModelCopyWith<CategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryModelCopyWith<$Res> {
  factory $CategoryModelCopyWith(
          CategoryModel value, $Res Function(CategoryModel) then) =
      _$CategoryModelCopyWithImpl<$Res, CategoryModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool status,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'response') DataResponse dataResponse});

  $DataResponseCopyWith<$Res> get dataResponse;
}

/// @nodoc
class _$CategoryModelCopyWithImpl<$Res, $Val extends CategoryModel>
    implements $CategoryModelCopyWith<$Res> {
  _$CategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? dataResponse = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      dataResponse: null == dataResponse
          ? _value.dataResponse
          : dataResponse // ignore: cast_nullable_to_non_nullable
              as DataResponse,
    ) as $Val);
  }

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DataResponseCopyWith<$Res> get dataResponse {
    return $DataResponseCopyWith<$Res>(_value.dataResponse, (value) {
      return _then(_value.copyWith(dataResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CategoryModelImplCopyWith<$Res>
    implements $CategoryModelCopyWith<$Res> {
  factory _$$CategoryModelImplCopyWith(
          _$CategoryModelImpl value, $Res Function(_$CategoryModelImpl) then) =
      __$$CategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'success') bool status,
      @JsonKey(name: 'message') String message,
      @JsonKey(name: 'response') DataResponse dataResponse});

  @override
  $DataResponseCopyWith<$Res> get dataResponse;
}

/// @nodoc
class __$$CategoryModelImplCopyWithImpl<$Res>
    extends _$CategoryModelCopyWithImpl<$Res, _$CategoryModelImpl>
    implements _$$CategoryModelImplCopyWith<$Res> {
  __$$CategoryModelImplCopyWithImpl(
      _$CategoryModelImpl _value, $Res Function(_$CategoryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? dataResponse = null,
  }) {
    return _then(_$CategoryModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      dataResponse: null == dataResponse
          ? _value.dataResponse
          : dataResponse // ignore: cast_nullable_to_non_nullable
              as DataResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryModelImpl implements _CategoryModel {
  _$CategoryModelImpl(
      {@JsonKey(name: 'success') this.status = false,
      @JsonKey(name: 'message') this.message = '',
      @JsonKey(name: 'response') this.dataResponse = const DataResponse()});

  factory _$CategoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryModelImplFromJson(json);

  @override
  @JsonKey(name: 'success')
  final bool status;
  @override
  @JsonKey(name: 'message')
  final String message;
  @override
  @JsonKey(name: 'response')
  final DataResponse dataResponse;

  @override
  String toString() {
    return 'CategoryModel(status: $status, message: $message, dataResponse: $dataResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.dataResponse, dataResponse) ||
                other.dataResponse == dataResponse));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, dataResponse);

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryModelImplCopyWith<_$CategoryModelImpl> get copyWith =>
      __$$CategoryModelImplCopyWithImpl<_$CategoryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryModelImplToJson(
      this,
    );
  }
}

abstract class _CategoryModel implements CategoryModel {
  factory _CategoryModel(
          {@JsonKey(name: 'success') final bool status,
          @JsonKey(name: 'message') final String message,
          @JsonKey(name: 'response') final DataResponse dataResponse}) =
      _$CategoryModelImpl;

  factory _CategoryModel.fromJson(Map<String, dynamic> json) =
      _$CategoryModelImpl.fromJson;

  @override
  @JsonKey(name: 'success')
  bool get status;
  @override
  @JsonKey(name: 'message')
  String get message;
  @override
  @JsonKey(name: 'response')
  DataResponse get dataResponse;

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryModelImplCopyWith<_$CategoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataResponse _$DataResponseFromJson(Map<String, dynamic> json) {
  return _DataResponse.fromJson(json);
}

/// @nodoc
mixin _$DataResponse {
  @JsonKey(name: 'slider')
  List<SliderResponse> get sliderResponse => throw _privateConstructorUsedError;
  @JsonKey(name: 'cat')
  List<CategoryResponse> get categoryResponse =>
      throw _privateConstructorUsedError;

  /// Serializes this DataResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DataResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DataResponseCopyWith<DataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataResponseCopyWith<$Res> {
  factory $DataResponseCopyWith(
          DataResponse value, $Res Function(DataResponse) then) =
      _$DataResponseCopyWithImpl<$Res, DataResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'slider') List<SliderResponse> sliderResponse,
      @JsonKey(name: 'cat') List<CategoryResponse> categoryResponse});
}

/// @nodoc
class _$DataResponseCopyWithImpl<$Res, $Val extends DataResponse>
    implements $DataResponseCopyWith<$Res> {
  _$DataResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DataResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sliderResponse = null,
    Object? categoryResponse = null,
  }) {
    return _then(_value.copyWith(
      sliderResponse: null == sliderResponse
          ? _value.sliderResponse
          : sliderResponse // ignore: cast_nullable_to_non_nullable
              as List<SliderResponse>,
      categoryResponse: null == categoryResponse
          ? _value.categoryResponse
          : categoryResponse // ignore: cast_nullable_to_non_nullable
              as List<CategoryResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataResponseImplCopyWith<$Res>
    implements $DataResponseCopyWith<$Res> {
  factory _$$DataResponseImplCopyWith(
          _$DataResponseImpl value, $Res Function(_$DataResponseImpl) then) =
      __$$DataResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'slider') List<SliderResponse> sliderResponse,
      @JsonKey(name: 'cat') List<CategoryResponse> categoryResponse});
}

/// @nodoc
class __$$DataResponseImplCopyWithImpl<$Res>
    extends _$DataResponseCopyWithImpl<$Res, _$DataResponseImpl>
    implements _$$DataResponseImplCopyWith<$Res> {
  __$$DataResponseImplCopyWithImpl(
      _$DataResponseImpl _value, $Res Function(_$DataResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of DataResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sliderResponse = null,
    Object? categoryResponse = null,
  }) {
    return _then(_$DataResponseImpl(
      sliderResponse: null == sliderResponse
          ? _value._sliderResponse
          : sliderResponse // ignore: cast_nullable_to_non_nullable
              as List<SliderResponse>,
      categoryResponse: null == categoryResponse
          ? _value._categoryResponse
          : categoryResponse // ignore: cast_nullable_to_non_nullable
              as List<CategoryResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataResponseImpl implements _DataResponse {
  const _$DataResponseImpl(
      {@JsonKey(name: 'slider')
      final List<SliderResponse> sliderResponse = const [],
      @JsonKey(name: 'cat')
      final List<CategoryResponse> categoryResponse = const []})
      : _sliderResponse = sliderResponse,
        _categoryResponse = categoryResponse;

  factory _$DataResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataResponseImplFromJson(json);

  final List<SliderResponse> _sliderResponse;
  @override
  @JsonKey(name: 'slider')
  List<SliderResponse> get sliderResponse {
    if (_sliderResponse is EqualUnmodifiableListView) return _sliderResponse;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sliderResponse);
  }

  final List<CategoryResponse> _categoryResponse;
  @override
  @JsonKey(name: 'cat')
  List<CategoryResponse> get categoryResponse {
    if (_categoryResponse is EqualUnmodifiableListView)
      return _categoryResponse;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoryResponse);
  }

  @override
  String toString() {
    return 'DataResponse(sliderResponse: $sliderResponse, categoryResponse: $categoryResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._sliderResponse, _sliderResponse) &&
            const DeepCollectionEquality()
                .equals(other._categoryResponse, _categoryResponse));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_sliderResponse),
      const DeepCollectionEquality().hash(_categoryResponse));

  /// Create a copy of DataResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataResponseImplCopyWith<_$DataResponseImpl> get copyWith =>
      __$$DataResponseImplCopyWithImpl<_$DataResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataResponseImplToJson(
      this,
    );
  }
}

abstract class _DataResponse implements DataResponse {
  const factory _DataResponse(
      {@JsonKey(name: 'slider') final List<SliderResponse> sliderResponse,
      @JsonKey(name: 'cat')
      final List<CategoryResponse> categoryResponse}) = _$DataResponseImpl;

  factory _DataResponse.fromJson(Map<String, dynamic> json) =
      _$DataResponseImpl.fromJson;

  @override
  @JsonKey(name: 'slider')
  List<SliderResponse> get sliderResponse;
  @override
  @JsonKey(name: 'cat')
  List<CategoryResponse> get categoryResponse;

  /// Create a copy of DataResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataResponseImplCopyWith<_$DataResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SliderResponse _$SliderResponseFromJson(Map<String, dynamic> json) {
  return _SliderResponse.fromJson(json);
}

/// @nodoc
mixin _$SliderResponse {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String get image => throw _privateConstructorUsedError;

  /// Serializes this SliderResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SliderResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SliderResponseCopyWith<SliderResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SliderResponseCopyWith<$Res> {
  factory $SliderResponseCopyWith(
          SliderResponse value, $Res Function(SliderResponse) then) =
      _$SliderResponseCopyWithImpl<$Res, SliderResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'image') String image});
}

/// @nodoc
class _$SliderResponseCopyWithImpl<$Res, $Val extends SliderResponse>
    implements $SliderResponseCopyWith<$Res> {
  _$SliderResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SliderResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
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
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SliderResponseImplCopyWith<$Res>
    implements $SliderResponseCopyWith<$Res> {
  factory _$$SliderResponseImplCopyWith(_$SliderResponseImpl value,
          $Res Function(_$SliderResponseImpl) then) =
      __$$SliderResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'image') String image});
}

/// @nodoc
class __$$SliderResponseImplCopyWithImpl<$Res>
    extends _$SliderResponseCopyWithImpl<$Res, _$SliderResponseImpl>
    implements _$$SliderResponseImplCopyWith<$Res> {
  __$$SliderResponseImplCopyWithImpl(
      _$SliderResponseImpl _value, $Res Function(_$SliderResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of SliderResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
  }) {
    return _then(_$SliderResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SliderResponseImpl implements _SliderResponse {
  _$SliderResponseImpl(
      {@JsonKey(name: 'id') this.id = 0,
      @JsonKey(name: 'name') this.name = '',
      @JsonKey(name: 'image') this.image = ''});

  factory _$SliderResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SliderResponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'image')
  final String image;

  @override
  String toString() {
    return 'SliderResponse(id: $id, name: $name, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SliderResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, image);

  /// Create a copy of SliderResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SliderResponseImplCopyWith<_$SliderResponseImpl> get copyWith =>
      __$$SliderResponseImplCopyWithImpl<_$SliderResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SliderResponseImplToJson(
      this,
    );
  }
}

abstract class _SliderResponse implements SliderResponse {
  factory _SliderResponse(
      {@JsonKey(name: 'id') final int id,
      @JsonKey(name: 'name') final String name,
      @JsonKey(name: 'image') final String image}) = _$SliderResponseImpl;

  factory _SliderResponse.fromJson(Map<String, dynamic> json) =
      _$SliderResponseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'image')
  String get image;

  /// Create a copy of SliderResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SliderResponseImplCopyWith<_$SliderResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CategoryResponse _$CategoryResponseFromJson(Map<String, dynamic> json) {
  return _CategoryResponse.fromJson(json);
}

/// @nodoc
mixin _$CategoryResponse {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;

  /// Serializes this CategoryResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryResponseCopyWith<CategoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryResponseCopyWith<$Res> {
  factory $CategoryResponseCopyWith(
          CategoryResponse value, $Res Function(CategoryResponse) then) =
      _$CategoryResponseCopyWithImpl<$Res, CategoryResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'image') String image,
      @JsonKey(name: 'description') String description});
}

/// @nodoc
class _$CategoryResponseCopyWithImpl<$Res, $Val extends CategoryResponse>
    implements $CategoryResponseCopyWith<$Res> {
  _$CategoryResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? description = null,
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
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryResponseImplCopyWith<$Res>
    implements $CategoryResponseCopyWith<$Res> {
  factory _$$CategoryResponseImplCopyWith(_$CategoryResponseImpl value,
          $Res Function(_$CategoryResponseImpl) then) =
      __$$CategoryResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'image') String image,
      @JsonKey(name: 'description') String description});
}

/// @nodoc
class __$$CategoryResponseImplCopyWithImpl<$Res>
    extends _$CategoryResponseCopyWithImpl<$Res, _$CategoryResponseImpl>
    implements _$$CategoryResponseImplCopyWith<$Res> {
  __$$CategoryResponseImplCopyWithImpl(_$CategoryResponseImpl _value,
      $Res Function(_$CategoryResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? description = null,
  }) {
    return _then(_$CategoryResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryResponseImpl implements _CategoryResponse {
  _$CategoryResponseImpl(
      {@JsonKey(name: 'id') this.id = 0,
      @JsonKey(name: 'name') this.name = '',
      @JsonKey(name: 'image') this.image = '',
      @JsonKey(name: 'description') this.description = ''});

  factory _$CategoryResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryResponseImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'image')
  final String image;
  @override
  @JsonKey(name: 'description')
  final String description;

  @override
  String toString() {
    return 'CategoryResponse(id: $id, name: $name, image: $image, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, image, description);

  /// Create a copy of CategoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryResponseImplCopyWith<_$CategoryResponseImpl> get copyWith =>
      __$$CategoryResponseImplCopyWithImpl<_$CategoryResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryResponseImplToJson(
      this,
    );
  }
}

abstract class _CategoryResponse implements CategoryResponse {
  factory _CategoryResponse(
          {@JsonKey(name: 'id') final int id,
          @JsonKey(name: 'name') final String name,
          @JsonKey(name: 'image') final String image,
          @JsonKey(name: 'description') final String description}) =
      _$CategoryResponseImpl;

  factory _CategoryResponse.fromJson(Map<String, dynamic> json) =
      _$CategoryResponseImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'image')
  String get image;
  @override
  @JsonKey(name: 'description')
  String get description;

  /// Create a copy of CategoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryResponseImplCopyWith<_$CategoryResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
