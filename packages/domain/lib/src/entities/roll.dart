import 'dice.dart';

enum RollModifier { advantage, disadvantage }

class Roll {
  final int? id;
  final Dice dice;
  final int result;
  final List<int> history;

  final Map<RollModifier, int> _modifiers = {};

  Roll(this.dice, this.result,
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

  List<RollModifier> get modifiers =>
      _modifiers.entries.map((e) => e.key).toList();

  void addModifier(RollModifier modifier) {
    final int result = _modifiers[modifier] ?? 0;
    _modifiers[modifier] = result + 1;
  }

  Roll reroll() {
    final newResult = dice.roll();
    return Roll(dice, newResult.result,
        id: id, history: [...history, result], modifiers: modifiers);
  }
}
