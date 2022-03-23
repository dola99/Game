import 'package:freezed_annotation/freezed_annotation.dart';
part 'data_model.freezed.dart';
part 'data_model.g.dart';

@freezed
class DataModel with _$DataModel{
factory DataModel({ required int id,
    required String title,
    required String worth,
    required String thumbnail,
    required String image,
    required String description,
    required String instructions,
    required String openGiveawayUrl,
    required String publishedDate,
    required String type,
    required String platforms,
    required String endDate,
    required int users,
    required String status,
    required String gamerpowerUrl,})=_DataModel;

    factory DataModel.fromJson(Map<String,dynamic> json)=> _$DataModelFromJson(json);
}