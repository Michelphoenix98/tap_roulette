import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tap_roulette/src/home/models/count/count.dart';
import 'package:tap_roulette/src/home/repositories/count/count.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_tap_cubit.freezed.dart';
part 'home_tap_state.dart';

class HomeTapCubit extends Cubit<HomeTapState> {
  final CountRepository countRepository;

  HomeTapCubit({
    required this.countRepository,
  }) : super(
          const HomeTapState(),
        );

  Future<void> onTap() async {
    emit(state.copyWith(isLoading: true));
    final randomNumber = Random().nextInt(60);

    int currentSeconds = DateTime.now().second;
    if (randomNumber == currentSeconds) {
      countRepository.create(
        Count(
          uid: '',
          timeStamp: currentSeconds.toString(),
        ),
      );
    }
    emit(
      state.copyWith(
        result: randomNumber == currentSeconds ? HomeTapResult.success : HomeTapResult.retry,
        isLoading: false,
      ),
    );
  }
}
