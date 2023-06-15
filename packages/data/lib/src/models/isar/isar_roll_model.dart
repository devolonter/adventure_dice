import 'package:domain/domain.dart';
import 'package:isar/isar.dart';

part 'isar_roll_model.g.dart';

@collection
@Name('Rolls')
class IsarRollModel {
  late Id? id;
  late byte diceSides;
  late byte result;
  late List<byte> modifiers;

  static IsarRollModel fromEntity(Roll roll) {
    return IsarRollModel()
      ..id = roll.id
      ..diceSides = roll.dice.sides
      ..result = roll.result
      ..modifiers = roll.modifiers
          .map((e) => e == RollModifier.advantage ? 1 : 0)
          .toList();
  }

  Roll toEntity() {
    return Roll(Dice(diceSides), result,
        id: id,
        modifiers: modifiers
            .map((e) =>
                e == 1 ? RollModifier.advantage : RollModifier.disadvantage)
            .toList());
  }
}
