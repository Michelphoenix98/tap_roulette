// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_tap_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeTapState {
  HomeTapResult? get result => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeTapStateCopyWith<HomeTapState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeTapStateCopyWith<$Res> {
  factory $HomeTapStateCopyWith(
          HomeTapState value, $Res Function(HomeTapState) then) =
      _$HomeTapStateCopyWithImpl<$Res, HomeTapState>;
  @useResult
  $Res call({HomeTapResult? result, bool isLoading});
}

/// @nodoc
class _$HomeTapStateCopyWithImpl<$Res, $Val extends HomeTapState>
    implements $HomeTapStateCopyWith<$Res> {
  _$HomeTapStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as HomeTapResult?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeTapStateImplCopyWith<$Res>
    implements $HomeTapStateCopyWith<$Res> {
  factory _$$HomeTapStateImplCopyWith(
          _$HomeTapStateImpl value, $Res Function(_$HomeTapStateImpl) then) =
      __$$HomeTapStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HomeTapResult? result, bool isLoading});
}

/// @nodoc
class __$$HomeTapStateImplCopyWithImpl<$Res>
    extends _$HomeTapStateCopyWithImpl<$Res, _$HomeTapStateImpl>
    implements _$$HomeTapStateImplCopyWith<$Res> {
  __$$HomeTapStateImplCopyWithImpl(
      _$HomeTapStateImpl _value, $Res Function(_$HomeTapStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
    Object? isLoading = null,
  }) {
    return _then(_$HomeTapStateImpl(
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as HomeTapResult?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$HomeTapStateImpl implements _HomeTapState {
  const _$HomeTapStateImpl({this.result, this.isLoading = false});

  @override
  final HomeTapResult? result;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'HomeTapState(result: $result, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeTapStateImpl &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeTapStateImplCopyWith<_$HomeTapStateImpl> get copyWith =>
      __$$HomeTapStateImplCopyWithImpl<_$HomeTapStateImpl>(this, _$identity);
}

abstract class _HomeTapState implements HomeTapState {
  const factory _HomeTapState(
      {final HomeTapResult? result, final bool isLoading}) = _$HomeTapStateImpl;

  @override
  HomeTapResult? get result;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$HomeTapStateImplCopyWith<_$HomeTapStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
