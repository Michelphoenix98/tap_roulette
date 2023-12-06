// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'count.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CountImpl _$$CountImplFromJson(Map<String, dynamic> json) => _$CountImpl(
      count: json['count'] as int? ?? 0,
      timeStamp: json['timeStamp'] as String,
      uid: json['uid'] as String,
    );

Map<String, dynamic> _$$CountImplToJson(_$CountImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'timeStamp': instance.timeStamp,
      'uid': instance.uid,
    };
