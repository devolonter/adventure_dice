import 'dice.dart';

enum RollModifier { advantage, disadvantage }

class Roll {
  final int? id;
  final Dice dice;
  final int result;

  final Map<RollModifier, int> _modifiers = {};

  Roll(this.dice, this.result,
      {this.id, List<RollModifier> modifiers = const []}) {
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

  List<int> get modifiers =>
      [...List.filled(advantage, 1), ...List.filled(disadvantage, -1)];

  void addModifier(RollModifier modifier) {
    final int result = _modifiers[modifier] ?? 0;
    _modifiers[modifier] = result + 1;
  }
}
