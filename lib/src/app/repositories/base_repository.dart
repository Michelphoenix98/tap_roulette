abstract class BaseRepository<T> {
  Stream<EntityChangedEvent<T>> get changes;

  int getCount();

  Future<T> create(T object);

  String getUid(T object);

  T setUid(T object, String uid);

  Map<String, dynamic> toJson(T object);

  T fromJson(Map<String, dynamic> json);
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
  created,
}
