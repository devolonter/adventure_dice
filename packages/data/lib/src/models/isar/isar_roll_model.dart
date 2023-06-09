import 'package:domain/domain.dart';
import 'package:isar/isar.dart';

part 'isar_roll_model.g.dart';

@collection
@Name('Rolls')
class IsarRollModel {
  late Id? id;
  late byte dieSides;
  late byte result;
  late List<byte> modifiers;
  late List<byte> history;

  static IsarRollModel fromEntity(Roll roll) {
    return IsarRollModel()
      ..id = roll.id
      ..dieSides = roll.die.sides
      ..result = roll.result
      ..history = roll.history
      ..modifiers = roll.modifiers
          .map((e) => e == RollModifier.advantage ? 1 : 0)
          .toList();
  }

  Roll toEntity() {
    return Roll(Die(dieSides), result,
        id: id,
        history: history,
        modifiers: modifiers
            .map((e) =>
                e == 1 ? RollModifier.advantage : RollModifier.disadvantage)
            .toList());
  }
}
