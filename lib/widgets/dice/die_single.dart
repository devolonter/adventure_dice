import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/dice_rolls.dart';
import 'die_icon.dart';

class DieSingle extends ConsumerWidget {
  const DieSingle({
    super.key,
    required this.die,
    required this.size,
  });

  final Die die;
  final Size size;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TextButton(
      onPressed: () => ref.read(diceRollsProvider.notifier).rollDie(die),
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: DieIcon(
        size: size,
        dice: die,
        color: Theme.of(context).colorScheme.primary,
        textColor: Theme.of(context).colorScheme.onPrimary,
      ),
    );
  }
}
