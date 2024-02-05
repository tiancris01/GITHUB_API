// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commits_datasource.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$commitDataSourceHash() => r'6e9cfb12153ff7d56bd193eec09417e282bb48e3';

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

/// See also [commitDataSource].
@ProviderFor(commitDataSource)
const commitDataSourceProvider = CommitDataSourceFamily();

/// See also [commitDataSource].
class CommitDataSourceFamily extends Family<CommitDataSource> {
  /// See also [commitDataSource].
  const CommitDataSourceFamily();

  /// See also [commitDataSource].
  CommitDataSourceProvider call(
    NetworkService networkService,
  ) {
    return CommitDataSourceProvider(
      networkService,
    );
  }

  @override
  CommitDataSourceProvider getProviderOverride(
    covariant CommitDataSourceProvider provider,
  ) {
    return call(
      provider.networkService,
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
  String? get name => r'commitDataSourceProvider';
}

/// See also [commitDataSource].
class CommitDataSourceProvider extends AutoDisposeProvider<CommitDataSource> {
  /// See also [commitDataSource].
  CommitDataSourceProvider(
    NetworkService networkService,
  ) : this._internal(
          (ref) => commitDataSource(
            ref as CommitDataSourceRef,
            networkService,
          ),
          from: commitDataSourceProvider,
          name: r'commitDataSourceProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$commitDataSourceHash,
          dependencies: CommitDataSourceFamily._dependencies,
          allTransitiveDependencies:
              CommitDataSourceFamily._allTransitiveDependencies,
          networkService: networkService,
        );

  CommitDataSourceProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.networkService,
  }) : super.internal();

  final NetworkService networkService;

  @override
  Override overrideWith(
    CommitDataSource Function(CommitDataSourceRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: CommitDataSourceProvider._internal(
        (ref) => create(ref as CommitDataSourceRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        networkService: networkService,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<CommitDataSource> createElement() {
    return _CommitDataSourceProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is CommitDataSourceProvider &&
        other.networkService == networkService;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, networkService.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin CommitDataSourceRef on AutoDisposeProviderRef<CommitDataSource> {
  /// The parameter `networkService` of this provider.
  NetworkService get networkService;
}

class _CommitDataSourceProviderElement
    extends AutoDisposeProviderElement<CommitDataSource>
    with CommitDataSourceRef {
  _CommitDataSourceProviderElement(super.provider);

  @override
  NetworkService get networkService =>
      (origin as CommitDataSourceProvider).networkService;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
