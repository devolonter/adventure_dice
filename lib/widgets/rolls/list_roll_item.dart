import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../dice/dice_icon.dart';
import 'list_rolls.dart';
import 'roll_modifier_value.dart';

class ListRollItem extends ConsumerWidget {
  const ListRollItem({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Roll roll = ref.watch(currentRollProvider);

    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        backgroundColor: null,
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
              DiceIcon(
                  size: const Size.square(20),
                  dice: roll.dice,
                  withText: false,
                  color: Theme.of(context).colorScheme.secondary),
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
                    color: Theme.of(context).colorScheme.secondary,
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
