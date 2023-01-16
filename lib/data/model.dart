import 'package:json_annotation/json_annotation.dart';

part 'model.g.dart';

@JsonSerializable()
class MemesModel {
  final String id, name, url;
  final int width;
  final int height;
  final int box_count;
  final int captions;

  MemesModel({
    required this.id,
    required this.name,
    required this.url,
    required this.width,
    required this.height,
    required this.box_count,
    required this.captions,
  });

  factory MemesModel.fromJson(Map<String, dynamic> json) =>
      _$MemesModelFromJson(json);
  Map<String, dynamic> toJson() => _$MemesModelToJson(this);
}
