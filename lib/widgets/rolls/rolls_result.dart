import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/dice_rolls.dart';

class RollsResult extends ConsumerWidget {
  final int result;

  const RollsResult({
    super.key,
    required this.result,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        IconButton(
          onPressed: () => ref
              .read(diceRollsProvider.notifier)
              .modifyRoll(RollModifier.disadvantage),
          icon: const Icon(Icons.remove),
          iconSize: 28,
        ),
        Expanded(
          child: Text(result.toString(),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primary,
              )),
        ),
        IconButton(
          onPressed: () => ref
              .read(diceRollsProvider.notifier)
              .modifyRoll(RollModifier.advantage),
          icon: const Icon(Icons.add),
          iconSize: 28,
        ),
      ],
    );
  }
}
