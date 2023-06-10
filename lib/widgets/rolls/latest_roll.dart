import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/dice_rolls.dart';

class LatestRoll extends ConsumerWidget {
  const LatestRoll({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final latestRoll = ref.watch(getLatestRollProvider);

    return SizedBox(
      height: 75,
      child: latestRoll.maybeWhen(
        data: (roll) {
          return Text(
            roll?.result.toString() ?? 'No rolls yet',
            style: Theme.of(context).textTheme.headline6,
          );
        },
        orElse: () => const SizedBox.shrink()
      ),
    );
  }
}
