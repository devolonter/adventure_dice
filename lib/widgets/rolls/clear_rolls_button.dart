import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/dice_rolls.dart';

class ClearRollsButton extends ConsumerWidget {
  const ClearRollsButton({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<Roll>> rolls = ref.watch(diceRollsProvider);

    return rolls.maybeWhen(
      data: (rolls) {
        if (rolls.isEmpty) {
          return const SizedBox.shrink();
        }

        return IconButton(
          onPressed: () => ref.read(diceRollsProvider.notifier).clearRolls(),
          icon: const Icon(Icons.delete),
          iconSize: 28,
          style: IconButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.background,
            shape: const CircleBorder(),
            foregroundColor: Theme.of(context).colorScheme.primary,
          )
        );
      },
      orElse: () => const SizedBox.shrink(),
    );
  }
}