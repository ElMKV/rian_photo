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
  @JsonKey(name: 'ok')
  final bool ok;




  const Result({
    this.ok = false,

  });

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);

  Map<String, dynamic> toJson() => _$ResultToJson(this);

  Result copyWith({
    bool? ok,

  }) {
    return Result(
      ok: ok ?? this.ok,
    );
  }
}


