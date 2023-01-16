// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MemesModel _$MemesModelFromJson(Map<String, dynamic> json) => MemesModel(
      id: json['id'] as String,
      name: json['name'] as String,
      url: json['url'] as String,
      width: json['width'] as int,
      height: json['height'] as int,
      box_count: json['box_count'] as int,
      captions: json['captions'] as int,
    );

Map<String, dynamic> _$MemesModelToJson(MemesModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'url': instance.url,
      'width': instance.width,
      'height': instance.height,
      'box_count': instance.box_count,
      'captions': instance.captions,
    };
