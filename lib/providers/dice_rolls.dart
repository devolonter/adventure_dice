import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'isar.dart';

part 'dice_rolls.g.dart';

@riverpod
class DiceRolls extends _$DiceRolls {
  late final RollsRepository _rollsRepository;
  late final GetAllRolls _getAllRolls;
  late final RollDie _rollDie;
  late final ModifyRoll _modifyRoll;
  late final ClearRolls _clearRolls;
  late final RerollDie _rerollDie;

  @override
  Future<List<Roll>> build() async {
    final isar = await ref.watch(isarProvider.future);

    _rollsRepository = RollsRepositoryImpl(IsarRollsDataSource(isar));

    _getAllRolls = GetAllRolls(_rollsRepository);
    _rollDie = RollDie(_rollsRepository);
    _modifyRoll = ModifyRoll(_rollsRepository);
    _clearRolls = ClearRolls(_rollsRepository);
    _rerollDie = RerollDie(_rollsRepository);

    return _getAllRolls();
  }

  Future<void> rollDie(Die dice) async {
    state = await AsyncValue.guard(() async {
      await _rollDie(dice);
      return _getAllRolls();
    });
  }

  Future<void> modifyRoll(RollModifier modifier) async {
    if (state.value == null || state.value!.isEmpty) return;

    state = await AsyncValue.guard(() async {
      await _modifyRoll(state.value!.last, modifier);
      return _getAllRolls();
    });
  }

  Future<void> clearRolls() async {
    state = await AsyncValue.guard(() async {
      await _clearRolls();
      return _getAllRolls();
    });
  }

  Future<void> rerollDie(List<Roll> rolls) async {
    state = await AsyncValue.guard(() async {
      await _rerollDie(rolls);
      return _getAllRolls();
    });
  }
}

@riverpod
class SelectedRolls extends _$SelectedRolls {
  @override
  Map<int, Roll> build() => {};

  void toggle(Roll roll) {
    if (roll.id == null) return;

    if (state.containsKey(roll.id)) {
      state = Map.from(state)..remove(roll.id);
    } else {
      state = Map.from(state)..[roll.id!] = roll;
    }
  }

  void clear() {
    state = {};
  }
}

@riverpod
AsyncValue<int> rollsResult(RollsResultRef ref) {
  final AsyncValue<List<Roll>> rolls = ref.watch(diceRollsProvider);
  return rolls.whenData((rolls) => RollsResult(rolls)());
}

@riverpod
CountDieRolls countDieRolls(CountDieRollsRef ref) {
  final AsyncValue<List<Roll>> rolls = ref.watch(diceRollsProvider);
  return CountDieRolls(rolls.valueOrNull ?? []);
}
