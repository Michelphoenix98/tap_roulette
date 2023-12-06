import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:tap_roulette/src/tap_roulette.dart';

import 'src/home/repositories/repositories.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await bootstrapHive();
  final countRepositoryHive = CountRepositoryHive();
  await countRepositoryHive.initialize();
  runApp(
    RepositoryProvider<CountRepository>(
      create: (_) => countRepositoryHive,
      child: const TapRoulette(),
    ),
  );
}

Future<void> bootstrapHive() async {
  final appDirectory = await getApplicationDocumentsDirectory();
  const hiveDirectory = 'hive';

  Hive.init(join(appDirectory.path, hiveDirectory));
}
