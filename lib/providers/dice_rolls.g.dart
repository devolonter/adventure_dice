// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dice_rolls.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$rollsResultHash() => r'c2fe4a3d13f44e2b987c32de0ea56541e65761a0';

/// See also [rollsResult].
@ProviderFor(rollsResult)
final rollsResultProvider = AutoDisposeProvider<AsyncValue<int>>.internal(
  rollsResult,
  name: r'rollsResultProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$rollsResultHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef RollsResultRef = AutoDisposeProviderRef<AsyncValue<int>>;
String _$diceRollsHash() => r'b1286fb40ec85eff06f09d12eab6b92ddcd31afa';

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
