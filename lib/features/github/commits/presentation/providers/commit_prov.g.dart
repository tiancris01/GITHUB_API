// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commit_prov.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$commitHash() => r'c907c7b165ef4379717d06e200369a26fff81697';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [commit].
@ProviderFor(commit)
const commitProvider = CommitFamily();

/// See also [commit].
class CommitFamily extends Family<AsyncValue<List<CommitEntitie>>> {
  /// See also [commit].
  const CommitFamily();

  /// See also [commit].
  CommitProvider call(
    String userName,
    String repo,
    String branch,
  ) {
    return CommitProvider(
      userName,
      repo,
      branch,
    );
  }

  @override
  CommitProvider getProviderOverride(
    covariant CommitProvider provider,
  ) {
    return call(
      provider.userName,
      provider.repo,
      provider.branch,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'commitProvider';
}

/// See also [commit].
class CommitProvider extends AutoDisposeFutureProvider<List<CommitEntitie>> {
  /// See also [commit].
  CommitProvider(
    String userName,
    String repo,
    String branch,
  ) : this._internal(
          (ref) => commit(
            ref as CommitRef,
            userName,
            repo,
            branch,
          ),
          from: commitProvider,
          name: r'commitProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$commitHash,
          dependencies: CommitFamily._dependencies,
          allTransitiveDependencies: CommitFamily._allTransitiveDependencies,
          userName: userName,
          repo: repo,
          branch: branch,
        );

  CommitProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userName,
    required this.repo,
    required this.branch,
  }) : super.internal();

  final String userName;
  final String repo;
  final String branch;

  @override
  Override overrideWith(
    FutureOr<List<CommitEntitie>> Function(CommitRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CommitProvider._internal(
        (ref) => create(ref as CommitRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userName: userName,
        repo: repo,
        branch: branch,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<CommitEntitie>> createElement() {
    return _CommitProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CommitProvider &&
        other.userName == userName &&
        other.repo == repo &&
        other.branch == branch;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userName.hashCode);
    hash = _SystemHash.combine(hash, repo.hashCode);
    hash = _SystemHash.combine(hash, branch.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CommitRef on AutoDisposeFutureProviderRef<List<CommitEntitie>> {
  /// The parameter `userName` of this provider.
  String get userName;

  /// The parameter `repo` of this provider.
  String get repo;

  /// The parameter `branch` of this provider.
  String get branch;
}

class _CommitProviderElement
    extends AutoDisposeFutureProviderElement<List<CommitEntitie>>
    with CommitRef {
  _CommitProviderElement(super.provider);

  @override
  String get userName => (origin as CommitProvider).userName;
  @override
  String get repo => (origin as CommitProvider).repo;
  @override
  String get branch => (origin as CommitProvider).branch;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
