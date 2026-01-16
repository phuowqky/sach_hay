import 'package:freezed_annotation/freezed_annotation.dart';

part 'ranking_model.freezed.dart';
part 'ranking_model.g.dart';

@freezed
class RankingModel with _$RankingModel {
  const factory RankingModel({
    int? reviewCount,
    String? bookId,
    String? title,
    String? author,
    String? category,
    String? coverImage,
    double? avgRating,
  }) = _RankingModel;

  factory RankingModel.fromJson(Map<String, dynamic> json) =>
      _$RankingModelFromJson(json);
}
