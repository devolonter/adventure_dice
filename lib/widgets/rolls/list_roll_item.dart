import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/dice_rolls.dart';
import '../dice/dice_icon.dart';
import 'roll_modifier_value.dart';

class ListRollItem extends ConsumerStatefulWidget {
  const ListRollItem({
    super.key,
    required this.roll,
  });

  final Roll roll;

  @override
  ConsumerState<ListRollItem> createState() => _ListRollItemState();
}

class _ListRollItemState extends ConsumerState<ListRollItem> {
  bool _selected = false;

  @override
  Widget build(BuildContext context) {
    final Roll roll = widget.roll;

    return TextButton(
      onPressed: () {
        setState(() {
          _selected = ref.read(selectedRollsProvider.notifier).toggle(roll);
        });
      },
      style: TextButton.styleFrom(
        backgroundColor: _selected
            ? Theme.of(context).colorScheme.primary.withOpacity(0.1)
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
              DiceIcon(
                  size: const Size.square(20),
                  dice: roll.dice,
                  withText: false,
                  color: _selected
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
                    color: _selected
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
