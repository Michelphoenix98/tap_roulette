import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tap_roulette/src/app/utils/string_utils.dart';
import 'package:tap_roulette/src/home/blocs/home_fetch/home_fetch_cubit.dart';
import 'package:tap_roulette/src/home/blocs/home_tap/home_tap_cubit.dart';
import 'package:tap_roulette/src/home/widgets/text_box.dart';

class RouletteOutcomeDisplay extends StatelessWidget {
  const RouletteOutcomeDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeTapCubit, HomeTapState>(builder: (context, state) {
      return TextBox(
        height: 300,
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<HomeFetchCubit, HomeFetchState>(builder: (context, state) {
              return Text(
                'Past wins: ${state.count.toString()}',
                style: TextStyle(color: Colors.blueAccent),
              );
            }),
            Column(
              children: [
                Text(
                  state.result != HomeTapResult.normal
                      ? '${state.result.name.toString().capitalize()}!'
                      : '',
                  style: const TextStyle(fontSize: 32),
                ),
              ],
            ),
            state.result == HomeTapResult.success
                ? Icon(
                    Icons.emoji_events,
                    color: Colors.black54,
                    size: 40,
                  )
                : SizedBox(
                    width: 40,
                    height: 40,
                  ),
          ],
        ),
      );
    });
  }
}
