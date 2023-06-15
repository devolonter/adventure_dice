import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/dice/dice_grid.dart';
import '../widgets/rolls/clear_rolls_button.dart';
import '../widgets/rolls/reroll_button.dart';
import '../widgets/rolls/rolls_result_container.dart';
import '../widgets/rolls/list_rolls.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adventure Dice',
            style: TextStyle(color: Theme.of(context).colorScheme.primary)),
      ),
      body: const Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: ListRolls(),
                ),
              ),
              RollsResultContainer(),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 25),
                    child: DiceGrid(),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: ClearRollsButton(),
                  )
                ],
              )
            ],
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 5),
              child: RerollButton(),
            ),
          ),
        ],
      ),
    );
  }
}
