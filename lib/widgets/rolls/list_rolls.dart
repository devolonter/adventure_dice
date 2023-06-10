import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/dice_rolls.dart';
import '../dice/dice_icon.dart';

class ListRolls extends ConsumerWidget {
  const ListRolls({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<Roll>> rolls = ref.watch(diceRollsProvider);

    return rolls.when(
      data: (rolls) {
        return Column(
          children: [
            const Spacer(),
            ListView.separated(
              shrinkWrap: true,
              itemCount: rolls.length,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                final roll = rolls[index];

                return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DiceIcon(
                          size: const Size.square(20),
                          dice: roll.dice,
                          withText: false,
                          color: Theme.of(context).colorScheme.secondary),
                      const SizedBox(width: 8),
                      Text(roll.result.toString(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.secondary,
                          )),
                    ]);
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(height: 2);
              },
            ),
          ],
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stackTrace) => const SizedBox.shrink(),
    );
  }
}
