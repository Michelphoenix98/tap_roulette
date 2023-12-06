part of 'home_tap_cubit.dart';

@freezed
class HomeTapState with _$HomeTapState {
  const factory HomeTapState({
    @Default(HomeTapResult.normal) HomeTapResult result,
    int? randomNumber,
    @Default(false) bool isLoading,
  }) = _HomeTapState;
}

enum HomeTapResult {
  normal,
  success,
  retry,
}
