// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_fetch_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeFetchState {
  bool get isLoading => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeFetchStateCopyWith<HomeFetchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeFetchStateCopyWith<$Res> {
  factory $HomeFetchStateCopyWith(
          HomeFetchState value, $Res Function(HomeFetchState) then) =
      _$HomeFetchStateCopyWithImpl<$Res, HomeFetchState>;
  @useResult
  $Res call({bool isLoading, int count});
}

/// @nodoc
class _$HomeFetchStateCopyWithImpl<$Res, $Val extends HomeFetchState>
    implements $HomeFetchStateCopyWith<$Res> {
  _$HomeFetchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeFetchStateImplCopyWith<$Res>
    implements $HomeFetchStateCopyWith<$Res> {
  factory _$$HomeFetchStateImplCopyWith(_$HomeFetchStateImpl value,
          $Res Function(_$HomeFetchStateImpl) then) =
      __$$HomeFetchStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, int count});
}

/// @nodoc
class __$$HomeFetchStateImplCopyWithImpl<$Res>
    extends _$HomeFetchStateCopyWithImpl<$Res, _$HomeFetchStateImpl>
    implements _$$HomeFetchStateImplCopyWith<$Res> {
  __$$HomeFetchStateImplCopyWithImpl(
      _$HomeFetchStateImpl _value, $Res Function(_$HomeFetchStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? count = null,
  }) {
    return _then(_$HomeFetchStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$HomeFetchStateImpl implements _HomeFetchState {
  const _$HomeFetchStateImpl({this.isLoading = false, this.count = 0});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final int count;

  @override
  String toString() {
    return 'HomeFetchState(isLoading: $isLoading, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeFetchStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeFetchStateImplCopyWith<_$HomeFetchStateImpl> get copyWith =>
      __$$HomeFetchStateImplCopyWithImpl<_$HomeFetchStateImpl>(
          this, _$identity);
}

abstract class _HomeFetchState implements HomeFetchState {
  const factory _HomeFetchState({final bool isLoading, final int count}) =
      _$HomeFetchStateImpl;

  @override
  bool get isLoading;
  @override
  int get count;
  @override
  @JsonKey(ignore: true)
  _$$HomeFetchStateImplCopyWith<_$HomeFetchStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
