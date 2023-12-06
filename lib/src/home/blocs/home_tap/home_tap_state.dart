part of 'home_tap_cubit.dart';

@freezed
class HomeTapState with _$HomeTapState {
  const factory HomeTapState({
    HomeTapResult? result,
    @Default(false) bool isLoading,
  }) = _HomeTapState;
}

enum HomeTapResult {
  success,
  retry,
}
