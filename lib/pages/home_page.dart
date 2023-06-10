import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/dice.dart';
import '../widgets/dice/dice_grid.dart';
import '../widgets/rolls/latest_roll.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {


    return Scaffold(
      appBar: AppBar(
        title: const Text('Adventure Dice'),
      ),
      body: const Column(
        children: [
          Expanded(child: SizedBox.shrink()),
          LatestRoll(),
          DiceGrid(),
        ],
      ),
    );
  }
}
