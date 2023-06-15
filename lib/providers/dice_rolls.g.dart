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
String _$diceRollsHash() => r'18283295b8d14e1ac6ef228c176cd462466a8478';

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
String _$selectedRollsHash() => r'241c46fde214beb181c843757863ad51a8e58275';

/// See also [SelectedRolls].
@ProviderFor(SelectedRolls)
final selectedRollsProvider =
    AutoDisposeNotifierProvider<SelectedRolls, Set<Roll>>.internal(
  SelectedRolls.new,
  name: r'selectedRollsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$selectedRollsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SelectedRolls = AutoDisposeNotifier<Set<Roll>>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
