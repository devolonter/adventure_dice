import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/dice_rolls.dart';

class LatestRoll extends ConsumerWidget {
  final Roll roll;

  const LatestRoll({
    super.key,
    required this.roll,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () =>
              ref.read(diceRollsProvider.notifier).modifyRoll(roll, -1),
          icon: const Icon(Icons.remove),
          iconSize: 28,
        ),
        Expanded(
          child: Text(roll.result.toString(),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primary,
              )),
        ),
        IconButton(
          onPressed: () =>
              ref.read(diceRollsProvider.notifier).modifyRoll(roll, 1),
          icon: const Icon(Icons.add),
          iconSize: 28,
        ),
      ],
    );
  }
}
