import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tap_roulette/src/home/blocs/home_fetch/home_fetch_cubit.dart';
import 'package:tap_roulette/src/home/blocs/home_tap/home_tap_cubit.dart';
import 'package:tap_roulette/src/home/repositories/count/count.dart';
import 'package:tap_roulette/src/home/widgets/random_number_display.dart';
import 'package:tap_roulette/src/home/widgets/roulette_outcome_display.dart';
import 'package:tap_roulette/src/home/widgets/tap_button.dart';

class TapRouletteHomeScreen extends StatefulWidget {
  const TapRouletteHomeScreen({super.key, required this.title});

  final String title;

  @override
  State<TapRouletteHomeScreen> createState() => _TapRouletteHomeScreenState();
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Theme.of(context).scaffoldBackgroundColor, // Match Scaffold background color
        child: Center(
            child: Text(
          'Tap Roulette',
          style: Theme.of(context).textTheme.titleLarge,
        )),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _TapRouletteHomeScreenState extends State<TapRouletteHomeScreen> {
  final confettiController = ConfettiController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      //   title: Text(widget.title),
      // ),
      appBar: const CustomAppBar(),
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => HomeTapCubit(
              countRepository: RepositoryProvider.of<CountRepository>(context),
            ),
          ),
          BlocProvider(
            create: (_) => HomeFetchCubit(
              countRepository: RepositoryProvider.of<CountRepository>(context),
            ),
          ),
        ],
        child: Builder(builder: (context) {
          return BlocConsumer<HomeTapCubit, HomeTapState>(
            listener: (_, state) {
              if (state.result == HomeTapResult.success) {
                confettiController.play();
              }

              if (state.result == HomeTapResult.normal) {
                confettiController.stop();
              }
            },
            builder: (_, state) => Center(
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      const RouletteOutcomeDisplay(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TapButton(
                            onTap: (state.result != HomeTapResult.success)
                                ? () {
                                    print('tap!');
                                    context.read<HomeTapCubit>().onTap();
                                  }
                                : () {},
                            child: const Text(
                              'Tap',
                              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
                            ),
                          ),
                          const RandomNumberDisplay(),
                        ],
                      ),
                      // Text(
                      //   '$_counter 90',
                      //   style: Theme.of(context).textTheme.headlineMedium,
                      // ),
                    ],
                  ),
                  ConfettiWidget(
                    emissionFrequency: 0.1,
                    confettiController: confettiController,
                    blastDirection: pi / 2,
                  ),
                ],
              ),
            ),
          );
        }),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
