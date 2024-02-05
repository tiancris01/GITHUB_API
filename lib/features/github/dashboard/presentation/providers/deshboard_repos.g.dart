// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deshboard_repos.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$dashboardReposHash() => r'8437e2f29fc1af84283472b5e8b7a23a08c7d621';

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

/// See also [dashboardRepos].
@ProviderFor(dashboardRepos)
const dashboardReposProvider = DashboardReposFamily();

/// See also [dashboardRepos].
class DashboardReposFamily extends Family<AsyncValue<List<GithubRepos>>> {
  /// See also [dashboardRepos].
  const DashboardReposFamily();

  /// See also [dashboardRepos].
  DashboardReposProvider call(
    String username,
  ) {
    return DashboardReposProvider(
      username,
    );
  }

  @override
  DashboardReposProvider getProviderOverride(
    covariant DashboardReposProvider provider,
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
  String? get name => r'dashboardReposProvider';
}

/// See also [dashboardRepos].
class DashboardReposProvider
    extends AutoDisposeFutureProvider<List<GithubRepos>> {
  /// See also [dashboardRepos].
  DashboardReposProvider(
    String username,
  ) : this._internal(
          (ref) => dashboardRepos(
            ref as DashboardReposRef,
            username,
          ),
          from: dashboardReposProvider,
          name: r'dashboardReposProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$dashboardReposHash,
          dependencies: DashboardReposFamily._dependencies,
          allTransitiveDependencies:
              DashboardReposFamily._allTransitiveDependencies,
          username: username,
        );

  DashboardReposProvider._internal(
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
    FutureOr<List<GithubRepos>> Function(DashboardReposRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DashboardReposProvider._internal(
        (ref) => create(ref as DashboardReposRef),
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
  AutoDisposeFutureProviderElement<List<GithubRepos>> createElement() {
    return _DashboardReposProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DashboardReposProvider && other.username == username;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, username.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DashboardReposRef on AutoDisposeFutureProviderRef<List<GithubRepos>> {
  /// The parameter `username` of this provider.
  String get username;
}

class _DashboardReposProviderElement
    extends AutoDisposeFutureProviderElement<List<GithubRepos>>
    with DashboardReposRef {
  _DashboardReposProviderElement(super.provider);

  @override
  String get username => (origin as DashboardReposProvider).username;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
