import 'dart:ffi';

import 'package:json_annotation/json_annotation.dart';

part 'gallary.g.dart';

@JsonSerializable()
class Main {
  @JsonKey(name: 'ok')
  final bool ok;
  @JsonKey(name: 'result')
  final Result result;

  const Main({
    this.ok = false,
    this.result = const Result(),
  });

  factory Main.fromJson(Map<String, dynamic> json) => _$MainFromJson(json);

  Map<String, dynamic> toJson() => _$MainToJson(this);

  Main copyWith({
    bool? ok,
    Result? result,
  }) {
    return Main(
      ok: ok ?? this.ok,
      result: result ?? this.result,
    );
  }
}

@JsonSerializable()
class Result {
  @JsonKey(name: 'items')
  final List<Items> items;
  @JsonKey(name: 'continuationToken')
  final String? continuationToken;

  const Result({
    this.items = const [],
    this.continuationToken
  });

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);

  Map<String, dynamic> toJson() => _$ResultToJson(this);

  Result copyWith({
    List<Items>? items,
    String? continuationToken
  }) {
    return Result(
      items: items ?? this.items,
      continuationToken: continuationToken ?? this.continuationToken,
    );
  }
}

@JsonSerializable()
class Items {
  @JsonKey(name: 'id')
  final String id;
  @JsonKey(name: 'variants')
  final List<Variants> variants;

  const Items({
    this.id = '',
    this.variants = const [],
  });

  factory Items.fromJson(Map<String, dynamic> json) => _$ItemsFromJson(json);

  Map<String, dynamic> toJson() => _$ItemsToJson(this);

  Items copyWith({
    String? id,
    List<Variants>? variants,
  }) {
    return Items(
      id: id ?? this.id,
      variants: variants ?? this.variants,
    );
  }
}

@JsonSerializable()
class Variants {
  @JsonKey(name: 'width')
  final int width;
  @JsonKey(name: 'height')
  final int height;
  @JsonKey(name: 'url')
  final String url;


  const Variants({
    this.width = 0,
    this.height = 0,
    this.url = '',
  });

  factory Variants.fromJson(Map<String, dynamic> json) => _$VariantsFromJson(json);

  Map<String, dynamic> toJson() => _$VariantsToJson(this);

  Variants copyWith({
    int? height,
    int? width,
    String? url,
  }) {
    return Variants(
      height: height ?? this.height,
      width: width ?? this.width,
      url: url ?? this.url,
    );
  }
}
