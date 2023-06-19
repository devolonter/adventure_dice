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
String _$diceRollsHash() => r'4b0b3d0aa5608459477032b650ce8b06afc18452';

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
String _$selectedRollsHash() => r'e7784c1c4a381ef2ea96c8d4a7fa095c71bbb29b';

/// See also [SelectedRolls].
@ProviderFor(SelectedRolls)
final selectedRollsProvider =
    AutoDisposeNotifierProvider<SelectedRolls, Map<int, Roll>>.internal(
  SelectedRolls.new,
  name: r'selectedRollsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$selectedRollsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SelectedRolls = AutoDisposeNotifier<Map<int, Roll>>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
