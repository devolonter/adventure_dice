import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/dice_rolls.dart';

class RerollButton extends ConsumerWidget {
  const RerollButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Visibility(
      visible: ref.watch(selectedRollsProvider).isNotEmpty,
      child: TextButton(
          onPressed: () {

          },
          style: TextButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(64)
            ),
            foregroundColor: Theme.of(context).colorScheme.onPrimary,
          ),
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.refresh),
              SizedBox(width: 6),
              Text(
                'Re-roll',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )
      ),
    );
  }
}
