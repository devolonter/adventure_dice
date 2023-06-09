import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/dice.dart';
import 'dice_single.dart';

class DiceGrid extends ConsumerWidget {
  const DiceGrid({Key? key, this.crossAxisCount = 4}) : super(key: key);

  final int crossAxisCount;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final config = ref.watch(appDiceProvider);
    final countDice = config.value?.length ?? 0;
    final diceSize = MediaQuery.of(context).size.width / crossAxisCount;
    final countDicePerRow = (countDice / crossAxisCount).ceil();

    return SizedBox(
      height: diceSize * countDicePerRow + 4 * (countDicePerRow - 1),
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: 4,
            mainAxisSpacing: 4,
          ),
          itemCount: countDice,
          itemBuilder: (context, index) {
            final dice = config.value![index];
            return DiceSingle(
                dice: dice,
                size: Size.square(diceSize));
          }),
    );
  }
}
