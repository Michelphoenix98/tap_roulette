import 'package:tap_roulette/src/app/repositories/hive_repository.dart';
import 'package:tap_roulette/src/home/models/count.dart';
import 'package:tap_roulette/src/home/repositories/home/count_repository.dart';

class CountRepositoryHive extends HiveRepository<Count> implements CountRepository {
  CountRepositoryHive()
      : super(
          boxName: 'rouletteTaps',
          getUid: (count) => count.uid,
          setUid: (count, uid) => count.copyWith(uid: uid),
          toJson: (count) => count.toJson(),
          fromJson: (json) => Count.fromJson(json),
        );
}
