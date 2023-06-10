import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/dice.dart';
import 'dice_single.dart';

class DiceGrid extends ConsumerWidget {
  const DiceGrid({Key? key, this.crossAxisCount = 4, this.padding = 10})
      : super(key: key);

  final int crossAxisCount;
  final int padding;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<Dice>> config = ref.watch(appDiceProvider);

    final int countDice = config.value?.length ?? 0;
    final double diceSize = MediaQuery.of(context).size.width / crossAxisCount;
    final int countDicePerRow = (countDice / crossAxisCount).ceil();

    return Container(
      height: diceSize * countDicePerRow +
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
          itemCount: countDice,
          itemBuilder: (context, index) {
            final dice = config.value![index];
            return DiceSingle(dice: dice, size: Size.square(diceSize));
          }),
    );
  }
}
