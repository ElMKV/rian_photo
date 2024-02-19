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
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => Items.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      continuationToken: json['continuationToken'] as String?,
    );

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'items': instance.items,
      'continuationToken': instance.continuationToken,
    };

Items _$ItemsFromJson(Map<String, dynamic> json) => Items(
      id: json['id'] as String? ?? '',
      variants: (json['variants'] as List<dynamic>?)
              ?.map((e) => Variants.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$ItemsToJson(Items instance) => <String, dynamic>{
      'id': instance.id,
      'variants': instance.variants,
    };

Variants _$VariantsFromJson(Map<String, dynamic> json) => Variants(
      width: json['width'] as int? ?? 0,
      height: json['height'] as int? ?? 0,
      url: json['url'] as String? ?? '',
    );

Map<String, dynamic> _$VariantsToJson(Variants instance) => <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
      'url': instance.url,
    };
