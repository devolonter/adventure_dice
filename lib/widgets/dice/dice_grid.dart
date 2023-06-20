import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/dice.dart';
import '../../providers/dice_rolls.dart';
import 'die_single.dart';

class DiceGrid extends ConsumerWidget {
  final int crossAxisCount;
  final int padding;

  const DiceGrid({Key? key, this.crossAxisCount = 4, this.padding = 10})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<Die>> dice = ref.watch(diceListProvider);

    return dice.maybeWhen(
      data: (diceData) {
        final int countDice = diceData.length;
        final double dieSize =
            MediaQuery.of(context).size.width / crossAxisCount;
        final int countDicePerRow = (countDice / crossAxisCount).ceil();

        final CountDieRolls countDieRolls = ref.watch(countDieRollsProvider);

        return Container(
          height: dieSize * countDicePerRow +
              (padding / 2) * (countDicePerRow - 1) +
              padding * 2,
          color: Theme.of(context).colorScheme.primary.withOpacity(0.33),
          padding: EdgeInsets.all(padding.toDouble()),
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                crossAxisSpacing: padding.toDouble(),
                mainAxisSpacing: padding.toDouble(),
              ),
              physics: const NeverScrollableScrollPhysics(),
              itemCount: countDice,
              itemBuilder: (context, index) {
                final die = diceData[index];
                return ProviderScope(overrides: [
                  dieSinglePropsProvider.overrideWithValue(DieSingleProps(
                      die: die,
                      size: Size.square(dieSize),
                      countDieRolls: countDieRolls(die))),
                ], child: const DieSingle());
              }),
        );
      },
      orElse: () => const SizedBox.shrink(),
    );
  }
}
