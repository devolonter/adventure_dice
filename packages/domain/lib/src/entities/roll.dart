import 'die.dart';

enum RollModifier { advantage, disadvantage }

class Roll {
  final int? id;
  final Die die;
  final int result;
  final List<int> history;

  final Map<RollModifier, int> _modifiers = {};

  Roll(this.die, this.result,
      {this.id,
      this.history = const [],
      List<RollModifier> modifiers = const []}) {
    for (final modifier in modifiers) {
      addModifier(modifier);
    }
  }

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
    return Roll(die, this.result,
        id: id, history: history, modifiers: modifiers);
  }

  Roll reroll() {
    final newResult = die.roll();
    return Roll(die, newResult.result,
        id: id, history: [...history, result], modifiers: modifiers);
  }
}
