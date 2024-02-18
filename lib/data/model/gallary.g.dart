// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gallary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Main _$MainFromJson(Map<String, dynamic> json) => Main(
      ok: json['ok'] as bool? ?? false,
      result: json['result'] == null
          ? const Result()
          : Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MainToJson(Main instance) => <String, dynamic>{
      'ok': instance.ok,
      'result': instance.result,
    };

Result _$ResultFromJson(Map<String, dynamic> json) => Result(
      ok: json['ok'] as bool? ?? false,
    );

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'ok': instance.ok,
    };
