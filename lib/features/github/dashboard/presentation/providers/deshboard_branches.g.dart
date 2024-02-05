// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deshboard_branches.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$deshboarBranchHash() => r'dcad3ff4ec83b430c6e0f75589eb7e3a3b009f2c';

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

/// See also [deshboarBranch].
@ProviderFor(deshboarBranch)
const deshboarBranchProvider = DeshboarBranchFamily();

/// See also [deshboarBranch].
class DeshboarBranchFamily extends Family<AsyncValue<List<RepoBranches>>> {
  /// See also [deshboarBranch].
  const DeshboarBranchFamily();

  /// See also [deshboarBranch].
  DeshboarBranchProvider call(
    String userName,
    String repo,
  ) {
    return DeshboarBranchProvider(
      userName,
      repo,
    );
  }

  @override
  DeshboarBranchProvider getProviderOverride(
    covariant DeshboarBranchProvider provider,
  ) {
    return call(
      provider.userName,
      provider.repo,
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
  String? get name => r'deshboarBranchProvider';
}

/// See also [deshboarBranch].
class DeshboarBranchProvider
    extends AutoDisposeFutureProvider<List<RepoBranches>> {
  /// See also [deshboarBranch].
  DeshboarBranchProvider(
    String userName,
    String repo,
  ) : this._internal(
          (ref) => deshboarBranch(
            ref as DeshboarBranchRef,
            userName,
            repo,
          ),
          from: deshboarBranchProvider,
          name: r'deshboarBranchProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$deshboarBranchHash,
          dependencies: DeshboarBranchFamily._dependencies,
          allTransitiveDependencies:
              DeshboarBranchFamily._allTransitiveDependencies,
          userName: userName,
          repo: repo,
        );

  DeshboarBranchProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userName,
    required this.repo,
  }) : super.internal();

  final String userName;
  final String repo;

  @override
  Override overrideWith(
    FutureOr<List<RepoBranches>> Function(DeshboarBranchRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DeshboarBranchProvider._internal(
        (ref) => create(ref as DeshboarBranchRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userName: userName,
        repo: repo,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<RepoBranches>> createElement() {
    return _DeshboarBranchProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DeshboarBranchProvider &&
        other.userName == userName &&
        other.repo == repo;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userName.hashCode);
    hash = _SystemHash.combine(hash, repo.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DeshboarBranchRef on AutoDisposeFutureProviderRef<List<RepoBranches>> {
  /// The parameter `userName` of this provider.
  String get userName;

  /// The parameter `repo` of this provider.
  String get repo;
}

class _DeshboarBranchProviderElement
    extends AutoDisposeFutureProviderElement<List<RepoBranches>>
    with DeshboarBranchRef {
  _DeshboarBranchProviderElement(super.provider);

  @override
  String get userName => (origin as DeshboarBranchProvider).userName;
  @override
  String get repo => (origin as DeshboarBranchProvider).repo;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
