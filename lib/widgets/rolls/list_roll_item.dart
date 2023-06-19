import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/dice_rolls.dart';
import '../dice/die_icon.dart';
import 'roll_history_value.dart';
import 'roll_modifier_value.dart';

final Provider<Roll> rollItemProvider =
    Provider<Roll>((ref) => throw UnimplementedError());

class ListRollItem extends ConsumerWidget {
  const ListRollItem({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Roll roll = ref.watch(rollItemProvider);
    final bool selected =
        ref.watch(selectedRollsProvider.select((s) => s.containsKey(roll.id)));

    return TextButton(
      onPressed: () {
        ref.read(selectedRollsProvider.notifier).toggle(roll);
      },
      style: TextButton.styleFrom(
        backgroundColor: selected
            ? Theme.of(context).colorScheme.primary.withOpacity(0.15)
            : null,
        padding: EdgeInsets.zero,
        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(64),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              for (final history in roll.history)
                ProviderScope(overrides: [
                  rollHistoryValueProvider.overrideWithValue(
                      InteractiveHistoryValue(history, selected))
                ], child: const RollHistoryValue()),
              const SizedBox(width: 8),
              DieIcon(
                  size: const Size.square(20),
                  die: roll.die,
                  withText: false,
                  color: selected
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.secondary),
            ]),
          ),
          const SizedBox(width: 6),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  roll.result.toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: selected
                        ? Theme.of(context).colorScheme.primary
                        : Theme.of(context).colorScheme.secondary,
                  ),
                ),
                if (roll.hasModifiers)
                  Column(children: [
                    if (roll.hasAdvantage)
                      RollModifierValue(
                        modifier: RollModifier.advantage,
                        value: roll.advantage,
                      ),
                    if (roll.hasDisadvantage)
                      RollModifierValue(
                        modifier: RollModifier.disadvantage,
                        value: roll.disadvantage,
                      ),
                  ])
              ],
            ),
          ),
        ],
      ),
    );
  }
}
