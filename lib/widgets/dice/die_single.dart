import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/dice_rolls.dart';
import 'die_icon.dart';

final Provider<DieSingleProps> dieSinglePropsProvider =
    Provider<DieSingleProps>((ref) => throw UnimplementedError());

class DieSingleProps {
  const DieSingleProps({
    required this.die,
    required this.size,
    required this.countDieRolls
  });

  final Die die;
  final Size size;
  final int countDieRolls;
}

class DieSingle extends ConsumerWidget {
  const DieSingle({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final DieSingleProps props = ref.watch(dieSinglePropsProvider);

    return TextButton(
      onPressed: () => ref.read(diceRollsProvider.notifier).rollDie(props.die),
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          DieIcon(
            size: props.size,
            die: props.die,
            color: Theme.of(context).colorScheme.primary,
            textColor: Theme.of(context).colorScheme.onPrimary,
          ),
          Positioned(
            left: -5,
            top: -5,
            child: Container(
              width: 18,
              height: 18,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.onPrimary,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                props.countDieRolls.toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
