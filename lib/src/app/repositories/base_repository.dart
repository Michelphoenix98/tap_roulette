abstract class BaseRepository<T> {
  Stream<EntityChangedEvent<T>> get changes;

  Map<String, dynamic> toJson(T object);

  T fromJson(Map<String, dynamic> json);

  Future<T> create(T object);

  Future<T> get();

  Future<T> update(T object);

  Future<bool> delete(T object);
}

class EntityChangedEvent<T> {
  T object;
  EntityChangedEventType type;

  EntityChangedEvent({
    required this.object,
    required this.type,
  });
}

enum EntityChangedEventType {
  updated,
}
