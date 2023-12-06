import 'dart:async';

import 'package:hive/hive.dart';
import 'package:tap_roulette/src/app/repositories/base_repository.dart';

abstract class HiveRepository<T> implements BaseRepository<T> {
  static const _idCounterKey = 'idCounter';

  final String Function(T object) _getUid;
  final T Function(T object, String uid) _setUid;
  final Map<String, dynamic> Function(T object) _toJson;
  final T Function(Map<String, dynamic> json) _fromJson;

  final StreamController<EntityChangedEvent<T>> _changedStreamController =
      StreamController.broadcast();

  @override
  Stream<EntityChangedEvent<T>> get changes => _changedStreamController.stream;

  final String boxName;

  late final Box box;

  HiveRepository({
    required this.boxName,
    required String Function(T object) getUid,
    required T Function(T object, String uid) setUid,
    required Map<String, dynamic> Function(T object) toJson,
    required T Function(Map<String, dynamic> json) fromJson,
  })  : _getUid = getUid,
        _setUid = setUid,
        _toJson = toJson,
        _fromJson = fromJson;

  Future<void> initialize() async {
    box = await Hive.openBox(boxName);
  }

  Future<void> dispose() async {
    await box.close();
  }

  @override
  Future<T> create(T object) async {
    var idCounter = box.get(_idCounterKey) as int? ?? 0;
    idCounter++;

    final createdObject = setUid(object, idCounter.toString());

    await box.putAll({
      _idCounterKey: idCounter,
      getUid(createdObject): toJson(createdObject),
    });

    final event = EntityChangedEvent<T>(
      object: createdObject,
      type: EntityChangedEventType.created,
    );

    _changedStreamController.add(event);

    return createdObject;
  }

  @override
  int getCount() {
    final count = box.get(_idCounterKey) as int? ?? 0;

    return count;
  }

  @override
  String getUid(T object) => _getUid(object);

  @override
  T setUid(T object, String uid) => _setUid(object, uid);

  @override
  Map<String, dynamic> toJson(T object) => _toJson(object);

  @override
  T fromJson(Map<String, dynamic> json) => _fromJson(json);
}
