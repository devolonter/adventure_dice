import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/dice_rolls.dart';
import 'rolls_result.dart';

class RollsResultContainer extends ConsumerWidget {
  const RollsResultContainer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final latestRoll = ref.watch(rollsResultProvider);

    return latestRoll.maybeWhen(
        data: (result) {
          return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: (result != 0)
                  ? RollsResult(result: result)
                  : const SizedBox.shrink());
        },
        orElse: () => const SizedBox.shrink());
  }
}
