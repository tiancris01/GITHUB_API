import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:githun_api_commits/features/github/commits/domain/entities/commits/commits_entitie.dart';

part 'commits_dto.freezed.dart';
part 'commits_dto.g.dart';

@freezed
class AuthorDto with _$AuthorDto {
  const AuthorDto._();
  const factory AuthorDto({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'avatar_url') required String avatarUrl,
  }) = _AuthorDto;

  factory AuthorDto.fromJson(Map<String, dynamic> json) =>
      _$AuthorDtoFromJson(json);
}

@freezed
class CommitAuthorDTO with _$CommitAuthorDTO {
  const CommitAuthorDTO._();
  const factory CommitAuthorDTO({
    required String name,
    required String email,
    required String date,
  }) = _CommitAuthorDTO;

  factory CommitAuthorDTO.fromJson(Map<String, dynamic> json) =>
      _$CommitAuthorDTOFromJson(json);
}

@freezed
class CommitsDTO with _$CommitsDTO {
  const CommitsDTO._();
  const factory CommitsDTO({
    required CommitAuthorDTO? commitAuthor,
    required AuthorDto author,
    required String message,
  }) = _CommitsDTO;

  factory CommitsDTO.fromJson(Map<String, dynamic> json) =>
      _$CommitsDTOFromJson(json);

  factory CommitsDTO.fromDomain(Commit commtis) {
    return CommitsDTO(
      commitAuthor: CommitAuthorDTO(
        name: commtis.commiAuthor!.name,
        email: commtis.commiAuthor!.email,
        date: commtis.commiAuthor!.date,
      ),
      author: AuthorDto(
        avatarUrl: commtis.author.avatarUrl,
      ),
      message: commtis.message,
    );
  }

  Commit toDomain() {
    return Commit(
      commiAuthor: CommitAutor(
        name: commitAuthor!.name,
        email: commitAuthor!.email,
        date: commitAuthor!.date,
      ),
      author: Author(
        avatarUrl: author.avatarUrl,
      ),
      message: message,
    );
  }
}
