// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dice_rolls.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getLatestRollHash() => r'013535f405f3eff50fd9dc2ec6cca50938dc0c59';

/// See also [getLatestRoll].
@ProviderFor(getLatestRoll)
final getLatestRollProvider = AutoDisposeProvider<AsyncValue<Roll?>>.internal(
  getLatestRoll,
  name: r'getLatestRollProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getLatestRollHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetLatestRollRef = AutoDisposeProviderRef<AsyncValue<Roll?>>;
String _$diceRollsHash() => r'6e4d25932528d856b2618eae97da8b2e0fcef19f';

/// See also [DiceRolls].
@ProviderFor(DiceRolls)
final diceRollsProvider =
    AutoDisposeAsyncNotifierProvider<DiceRolls, List<Roll>>.internal(
  DiceRolls.new,
  name: r'diceRollsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$diceRollsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$DiceRolls = AutoDisposeAsyncNotifier<List<Roll>>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
