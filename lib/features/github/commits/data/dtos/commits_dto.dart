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

  factory AuthorDto.fromDomain(Author author) {
    return AuthorDto(
      avatarUrl: author.avatarUrl,
    );
  }
  Author toDomain() {
    return Author(
      avatarUrl: avatarUrl,
    );
  }
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

  factory CommitAuthorDTO.fromDomain(CommitAutor commitAutor) {
    return CommitAuthorDTO(
      name: commitAutor.name,
      email: commitAutor.email,
      date: commitAutor.date,
    );
  }

  CommitAutor toDomain() {
    return CommitAutor(
      name: name,
      email: email,
      date: date,
    );
  }
}

@freezed
class CommitDTO with _$CommitDTO {
  const CommitDTO._();
  const factory CommitDTO({
    required CommitAuthorDTO author,
    required String message,
  }) = _CommitDTO;

  factory CommitDTO.fromJson(Map<String, dynamic> json) =>
      _$CommitDTOFromJson(json);
}

@freezed
class CommitsDTO with _$CommitsDTO {
  const CommitsDTO._();
  const factory CommitsDTO({
    required CommitDTO? commit,
    required AuthorDto author,
  }) = _CommitsDTO;

  factory CommitsDTO.fromJson(Map<String, dynamic> json) =>
      _$CommitsDTOFromJson(json);

  factory CommitsDTO.fromDomain(CommitEntitie commtisEntitie) {
    return CommitsDTO(
      commit: CommitDTO(
        author: CommitAuthorDTO.fromDomain(commtisEntitie.commit.commitAuthor),
        message: commtisEntitie.commit.message,
      ),
      author: AuthorDto.fromDomain(commtisEntitie.author),
    );
  }

  CommitEntitie toDomain() {
    return CommitEntitie(
      commit: Commit(
        commitAuthor: commit!.author.toDomain(),
        message: commit!.message,
      ),
      author: Author(
        avatarUrl: author.toDomain().avatarUrl,
      ),
    );
  }
}
