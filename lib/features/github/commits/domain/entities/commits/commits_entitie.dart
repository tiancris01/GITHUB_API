import 'package:freezed_annotation/freezed_annotation.dart';

part 'commits_entitie.freezed.dart';

@freezed
class CommitEntitie with _$CommitEntitie {
  const CommitEntitie._();
  const factory CommitEntitie({
    required Commit commit,
    required Author author,
  }) = _CommitsEntitie;
}

@freezed
class Commit with _$Commit {
  const Commit._();
  const factory Commit({
    required String message,
    required CommitAutor commitAuthor,
  }) = _Commit;
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
