import 'package:json_annotation/json_annotation.dart';
import 'package:netflixapp/core/constant.dart';

part 'search_respnds.g.dart';

@JsonSerializable()
class SearchResp {
  @JsonKey(name: 'results')
  List<SearchResultData> results;

  SearchResp({this.results = const []});
  factory SearchResp.fromJson(Map<String, dynamic> json) {
    return _$SearchRespFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchRespToJson(this);
}

@JsonSerializable()
class SearchResultData {
  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'original_title')
  String? originalTitle;

  @JsonKey(name: 'poster_path')
  String? posterPath;

  String get posterPathURL => imageAppendUrl + posterPath.toString();

  SearchResultData({this.id, this.originalTitle, this.posterPath});

  factory SearchResultData.fromJson(Map<String, dynamic> json) {
    return _$SearchResultDataFromJson(json);
  }
  Map<String, dynamic> toJson() => _$SearchResultDataToJson(this);
}
