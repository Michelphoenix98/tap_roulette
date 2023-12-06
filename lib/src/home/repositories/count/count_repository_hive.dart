import 'package:tap_roulette/src/app/repositories/hive_repository.dart';
import 'package:tap_roulette/src/home/models/count/count.dart';
import 'package:tap_roulette/src/home/repositories/count/count_repository.dart';

class CountRepositoryHive extends HiveRepository<Count> implements CountRepository {
  CountRepositoryHive()
      : super(
          boxName: 'rouletteTaps',
          getUid: (count) => count.uid,
          setUid: (count, uid) => count.copyWith(
            uid: uid,
            count: int.parse(uid),
          ),
          toJson: (count) => count.toJson(),
          fromJson: (json) => Count.fromJson(json),
        );
}
