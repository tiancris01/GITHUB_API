// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commits_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthorDtoImpl _$$AuthorDtoImplFromJson(Map<String, dynamic> json) =>
    _$AuthorDtoImpl(
      avatarUrl: json['avatar_url'] as String,
    );

Map<String, dynamic> _$$AuthorDtoImplToJson(_$AuthorDtoImpl instance) =>
    <String, dynamic>{
      'avatar_url': instance.avatarUrl,
    };

_$CommitAuthorDTOImpl _$$CommitAuthorDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$CommitAuthorDTOImpl(
      name: json['name'] as String,
      email: json['email'] as String,
      date: json['date'] as String,
    );

Map<String, dynamic> _$$CommitAuthorDTOImplToJson(
        _$CommitAuthorDTOImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'date': instance.date,
    };

_$CommitDTOImpl _$$CommitDTOImplFromJson(Map<String, dynamic> json) =>
    _$CommitDTOImpl(
      author: CommitAuthorDTO.fromJson(json['author'] as Map<String, dynamic>),
      message: json['message'] as String,
    );

Map<String, dynamic> _$$CommitDTOImplToJson(_$CommitDTOImpl instance) =>
    <String, dynamic>{
      'author': instance.author,
      'message': instance.message,
    };

_$CommitsDTOImpl _$$CommitsDTOImplFromJson(Map<String, dynamic> json) =>
    _$CommitsDTOImpl(
      commit: json['commit'] == null
          ? null
          : CommitDTO.fromJson(json['commit'] as Map<String, dynamic>),
      author: AuthorDto.fromJson(json['author'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CommitsDTOImplToJson(_$CommitsDTOImpl instance) =>
    <String, dynamic>{
      'commit': instance.commit,
      'author': instance.author,
    };
