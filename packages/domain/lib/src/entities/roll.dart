import 'die.dart';

enum RollModifier { advantage, disadvantage }

class Roll {
  final int? id;
  final Die die;
  final int result;
  final List<int> history;

  late Map<RollModifier, int> _modifiers = {};

  Roll(this.die, this.result,
      {this.id,
      this.history = const [],
      List<RollModifier> modifiers = const []}) {
    for (final modifier in modifiers) {
      addModifier(modifier);
    }
  }

  Roll.fromRoll(Roll roll, {int? id})
      : this._raw(
          die: roll.die,
          result: roll.result,
          id: id,
          history: roll.history,
          modifiers: roll._modifiers,
  );

  Roll._raw({
    required this.die,
    required this.result,
    required this.id,
    required this.history,
    Map<RollModifier, int> modifiers = const {},
  }) : _modifiers = modifiers;

  int get advantage => _modifiers[RollModifier.advantage] ?? 0;
  int get disadvantage => _modifiers[RollModifier.disadvantage] ?? 0;
  int get total => result + advantage - disadvantage;

  bool get hasAdvantage => advantage > 0;
  bool get hasDisadvantage => disadvantage > 0;
  bool get hasModifiers => hasAdvantage || hasDisadvantage;

  List<RollModifier> get modifiers {
    final modifiers = <RollModifier>[];
    modifiers.addAll(List.filled(advantage, RollModifier.advantage));
    modifiers.addAll(List.filled(disadvantage, RollModifier.disadvantage));
    return modifiers;
  }

  Roll addModifier(RollModifier modifier) {
    final int result = _modifiers[modifier] ?? 0;
    _modifiers[modifier] = result + 1;
    return Roll.fromRoll(this, id: id);
  }

  Roll reroll() {
    final newResult = die.roll();
    return Roll(die, newResult.result,
        id: id, history: [...history, result], modifiers: modifiers);
  }
}
