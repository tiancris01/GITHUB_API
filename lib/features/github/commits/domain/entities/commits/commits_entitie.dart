import 'package:freezed_annotation/freezed_annotation.dart';

part 'commits_entitie.freezed.dart';

@freezed
class Commit with _$Commit {
  const Commit._();
  const factory Commit({
    required CommitAutor? commiAuthor,
    required Author author,
    required String message,
  }) = _Commits;
}

@freezed
class CommitAutor with _$CommitAutor {
  const CommitAutor._();
  const factory CommitAutor({
    required String name,
    required String email,
    required String date,
  }) = _commitAutor;
}

@freezed
class Author with _$Author {
  const Author._();
  const factory Author({
    required String avatarUrl,
  }) = _author;
}
