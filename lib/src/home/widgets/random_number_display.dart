import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tap_roulette/src/app/utils/string_utils.dart';
import 'package:tap_roulette/src/home/blocs/home_fetch/home_fetch_cubit.dart';
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
        child: Text((state.randomNumber ?? '').toString(), style: const TextStyle(fontSize: 28)),
      );
    });
  }
}
