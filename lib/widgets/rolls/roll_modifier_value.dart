import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

class RollModifierValue extends StatelessWidget {
  final RollModifier modifier;
  final int value;

  const RollModifierValue({
    super.key,
    required this.modifier,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(modifier == RollModifier.advantage ? Icons.add : Icons.remove,
            size: 14,
            color: Theme.of(context).colorScheme.secondary.withOpacity(0.75)),
        const SizedBox(width: 2),
        Text(
          value.toString(),
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 14,
            color: Theme.of(context).colorScheme.secondary.withOpacity(0.75),
          ),
        ),
      ],
    );
  }
}
