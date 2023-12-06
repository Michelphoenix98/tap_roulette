part of 'home_fetch_cubit.dart';

@freezed
class HomeFetchState with _$HomeFetchState {
  const factory HomeFetchState({
    @Default(false) bool isLoading,
    @Default(0) int count,
  }) = _HomeFetchState;
}
