
import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'isar.dart';

part 'dice_rolls.g.dart';

@riverpod
class DiceRolls extends _$DiceRolls {
  late final RollsRepository _rollsRepository;
  late final GetAllRolls _getAllRolls;
  late final RollDice _rollDice;
  late final ModifyRoll _modifyRoll;

  @override
  Future<List<Roll>> build() async {
    final isar = await ref.watch(isarProvider.future);

    _rollsRepository = RollsRepositoryImpl(
      IsarRollsDataSource(isar)
    );

    _getAllRolls = GetAllRolls(_rollsRepository);
    _rollDice = RollDice(_rollsRepository);
    _modifyRoll = ModifyRoll(_rollsRepository);

    return _getAllRolls();
  }

  Future<void> rollDice(Dice dice) async {
    state = await AsyncValue.guard(() async {
      await _rollDice(dice);
      return _getAllRolls();
    });
  }

  Future<void> modifyRoll(Roll roll, int modifier) async {
    state = await AsyncValue.guard(() async {
      await _modifyRoll(roll, modifier);
      return _getAllRolls();
    });
  }
}

@riverpod
AsyncValue<Roll?> getLatestRoll(GetLatestRollRef ref) {
  final rolls = ref.watch(diceRollsProvider);
  return rolls.whenData((rolls) => rolls.lastOrNull);
}