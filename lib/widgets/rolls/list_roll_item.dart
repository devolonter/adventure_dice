import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

import '../dice/dice_icon.dart';

class ListRollItem extends StatelessWidget {
  const ListRollItem({
    super.key,
    required this.roll,
  });

  final Roll roll;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children:[
              DiceIcon(
                size: const Size.square(20),
                dice: roll.dice,
                withText: false,
                color: Theme.of(context).colorScheme.secondary),
            ]
          ),
        ),
        const SizedBox(width: 6),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(roll.result.toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}