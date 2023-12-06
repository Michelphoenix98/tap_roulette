import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tap_roulette/src/home/blocs/home_fetch/home_fetch_cubit.dart';
import 'package:tap_roulette/src/home/blocs/home_tap/home_tap_cubit.dart';
import 'package:tap_roulette/src/home/repositories/count/count.dart';

class TapRouletteHomeScreen extends StatelessWidget {
  const TapRouletteHomeScreen({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
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
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                BlocBuilder<HomeFetchCubit, HomeFetchState>(builder: (context, state) {
                  return Text(state.count.toString());
                }),
                BlocBuilder<HomeTapCubit, HomeTapState>(builder: (context, state) {
                  if (state.result == null) return SizedBox.shrink();

                  return Text(state.result!.toString());
                }),

                TextButton(
                  onPressed: () {
                    print('tap!');
                    context.read<HomeTapCubit>().onTap();
                  },
                  child: Text('TAP'),
                ),
                // Text(
                //   '$_counter 90',
                //   style: Theme.of(context).textTheme.headlineMedium,
                // ),
              ],
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
