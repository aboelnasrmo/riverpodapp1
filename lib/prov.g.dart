// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prov.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: avoid_private_typedef_functions, non_constant_identifier_names, subtype_of_sealed_class, invalid_use_of_internal_member, unused_element, constant_identifier_names, unnecessary_raw_strings, library_private_types_in_public_api

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

String _$testProviderHash() => r'2706f973d46426da9ddd71fb6677f07082c1967c';

/// See also [testProvider].
final testProviderProvider = AutoDisposeProvider<int>(
  testProvider,
  name: r'testProviderProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$testProviderHash,
);
typedef TestProviderRef = AutoDisposeProviderRef<int>;
String _$nameHash() => r'db91a44262ce9a6150bb911c8bcc4b621a961833';

/// See also [name].
final nameProvider = AutoDisposeProvider<String>(
  name,
  name: r'nameProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$nameHash,
);
typedef NameRef = AutoDisposeProviderRef<String>;
String _$myDateHash() => r'd31051587b7ee07fcef7bc492f9a9bf76fcbd25d';

/// See also [myDate].
final myDateProvider = AutoDisposeProvider<DateTime>(
  myDate,
  name: r'myDateProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$myDateHash,
);
typedef MyDateRef = AutoDisposeProviderRef<DateTime>;
