import 'package:adventure_dice/widgets/rolls/latest_roll.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/dice_rolls.dart';

class LatestRollContainer extends ConsumerWidget {
  const LatestRollContainer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final latestRoll = ref.watch(getLatestRollProvider);

    return SizedBox(
      height: 90,
      child: latestRoll.maybeWhen(
          data: (roll) {
            return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: (roll != null)
                    ? LatestRoll(roll: roll)
                    : const SizedBox.shrink());
          },
          orElse: () => const SizedBox.shrink()),
    );
  }
}
