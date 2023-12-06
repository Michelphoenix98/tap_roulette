import 'package:freezed_annotation/freezed_annotation.dart';

part 'count.freezed.dart';
part 'count.g.dart';

@freezed
class Count with _$Count {
  factory Count({
    @Default(0) int count,
    required String timeStamp,
    required String uid,
  }) = _Count;
  Count._();

  factory Count.fromJson(Map<String, dynamic> json) => _$CountFromJson(json);
}
