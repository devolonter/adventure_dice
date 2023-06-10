import 'package:domain/domain.dart';
import 'package:isar/isar.dart';

part 'isar_roll_model.g.dart';

@collection
@Name('Rolls')
class IsarRollModel {
  late Id? id;
  late byte diceSides;
  late byte result;

  static IsarRollModel fromEntity(Roll roll) {
    return IsarRollModel()
      ..id = roll.id
      ..diceSides = roll.dice.sides
      ..result = roll.result;
  }

  Roll toEntity() {
    return Roll(Dice(diceSides), result, id: id);
  }
}