import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/dice_rolls.dart';
import 'latest_roll.dart';

class LatestRollContainer extends ConsumerWidget {
  const LatestRollContainer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final latestRoll = ref.watch(getLatestRollProvider);

    return latestRoll.maybeWhen(
        data: (roll) {
          return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: (roll != null)
                  ? LatestRoll(roll: roll)
                  : const SizedBox.shrink());
        },
        orElse: () => const SizedBox.shrink());
  }
}
