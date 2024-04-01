// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dice_rolls.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$rollsResultHash() => r'ca7fa9f9095a91dce02761aa9c5ba69d9a3b65cf';

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
String _$countDieRollsHash() => r'bc360aa9dcc382b1ebb23d7b0db6aa608ccdfdd1';

/// See also [countDieRolls].
@ProviderFor(countDieRolls)
final countDieRollsProvider = AutoDisposeProvider<CountDieRolls>.internal(
  countDieRolls,
  name: r'countDieRollsProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$countDieRollsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CountDieRollsRef = AutoDisposeProviderRef<CountDieRolls>;
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
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
