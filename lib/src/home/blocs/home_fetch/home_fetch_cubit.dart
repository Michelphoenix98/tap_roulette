import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tap_roulette/src/app/repositories/base_repository.dart';
import 'package:tap_roulette/src/home/models/count/count.dart';
import 'package:tap_roulette/src/home/repositories/count/count.dart';

part 'home_fetch_cubit.freezed.dart';
part 'home_fetch_state.dart';

class HomeFetchCubit extends Cubit<HomeFetchState> {
  final CountRepository countRepository;

  late StreamSubscription _changesStreamSubscription;

  HomeFetchCubit({
    required this.countRepository,
  }) : super(const HomeFetchState()) {
    _initialize();
  }

  @override
  Future<void> close() async {
    await _changesStreamSubscription.cancel();

    return super.close();
  }

  Future _initialize() async {
    emit(state.copyWith(isLoading: true));
    final count = countRepository.getCount();
    emit(
      state.copyWith(isLoading: false, count: count),
    );

    _changesStreamSubscription = countRepository.changes.listen(_onEntityChangedEvent);
  }

  void _onEntityChangedEvent(EntityChangedEvent<Count> event) {
    switch (event.type) {
      case EntityChangedEventType.created:
        emit(state.copyWith(count: event.object.count));
        break;
    }
  }
}
