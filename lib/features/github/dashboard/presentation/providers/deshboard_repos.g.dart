// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deshboard_repos.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$deshboardReposHash() => r'665c5dfa08a4d1f0a24132f500c1ae2e9613fe5f';

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

/// See also [deshboardRepos].
@ProviderFor(deshboardRepos)
const deshboardReposProvider = DeshboardReposFamily();

/// See also [deshboardRepos].
class DeshboardReposFamily extends Family<AsyncValue<List<ReposDTO>>> {
  /// See also [deshboardRepos].
  const DeshboardReposFamily();

  /// See also [deshboardRepos].
  DeshboardReposProvider call(
    String username,
  ) {
    return DeshboardReposProvider(
      username,
    );
  }

  @override
  DeshboardReposProvider getProviderOverride(
    covariant DeshboardReposProvider provider,
  ) {
    return call(
      provider.username,
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
  String? get name => r'deshboardReposProvider';
}

/// See also [deshboardRepos].
class DeshboardReposProvider extends AutoDisposeFutureProvider<List<ReposDTO>> {
  /// See also [deshboardRepos].
  DeshboardReposProvider(
    String username,
  ) : this._internal(
          (ref) => deshboardRepos(
            ref as DeshboardReposRef,
            username,
          ),
          from: deshboardReposProvider,
          name: r'deshboardReposProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$deshboardReposHash,
          dependencies: DeshboardReposFamily._dependencies,
          allTransitiveDependencies:
              DeshboardReposFamily._allTransitiveDependencies,
          username: username,
        );

  DeshboardReposProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.username,
  }) : super.internal();

  final String username;

  @override
  Override overrideWith(
    FutureOr<List<ReposDTO>> Function(DeshboardReposRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DeshboardReposProvider._internal(
        (ref) => create(ref as DeshboardReposRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        username: username,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<ReposDTO>> createElement() {
    return _DeshboardReposProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DeshboardReposProvider && other.username == username;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, username.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DeshboardReposRef on AutoDisposeFutureProviderRef<List<ReposDTO>> {
  /// The parameter `username` of this provider.
  String get username;
}

class _DeshboardReposProviderElement
    extends AutoDisposeFutureProviderElement<List<ReposDTO>>
    with DeshboardReposRef {
  _DeshboardReposProviderElement(super.provider);

  @override
  String get username => (origin as DeshboardReposProvider).username;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
