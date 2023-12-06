import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tap_roulette/src/home/blocs/home_tap/home_tap_cubit.dart';
import 'package:tap_roulette/src/home/widgets/text_box.dart';

class RandomNumberDisplay extends StatelessWidget {
  const RandomNumberDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeTapCubit, HomeTapState>(builder: (context, state) {
      return TextBox(
        height: 150,
        width: 150,
        child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 100),
            child: Text((state.randomNumber ?? '').toString(),
                key: ValueKey(state.randomNumber), style: const TextStyle(fontSize: 28))),
      );
    });
  }
}
