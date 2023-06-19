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
  });

  final Die die;
  final Size size;
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
      child: DieIcon(
        size: props.size,
        die: props.die,
        color: Theme.of(context).colorScheme.primary,
        textColor: Theme.of(context).colorScheme.onPrimary,
      ),
    );
  }
}
