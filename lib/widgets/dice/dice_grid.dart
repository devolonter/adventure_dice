import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/dice.dart';
import 'die_single.dart';

class DiceGrid extends ConsumerWidget {
  final int crossAxisCount;
  final int padding;

  const DiceGrid({Key? key, this.crossAxisCount = 4, this.padding = 10})
      : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<Die>> config = ref.watch(diceListProvider);

    final int countDice = config.value?.length ?? 0;
    final double dieSize = MediaQuery.of(context).size.width / crossAxisCount;
    final int countDicePerRow = (countDice / crossAxisCount).ceil();

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
            final dice = config.value![index];
            return DieSingle(die: dice, size: Size.square(dieSize));
          }),
    );
  }
}
