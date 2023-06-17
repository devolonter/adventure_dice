import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final Provider<InteractiveHistoryValue> rollHistoryValueProvider =
    Provider<InteractiveHistoryValue>((ref) => throw UnimplementedError());

class InteractiveHistoryValue {
  const InteractiveHistoryValue(this.value, this.selected);

  final int value;
  final bool selected;
}

class RollHistoryValue extends ConsumerWidget {
  const RollHistoryValue({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final InteractiveHistoryValue history =
        ref.watch(rollHistoryValueProvider);

    return ConstrainedBox(
      constraints: const BoxConstraints(minWidth: 30),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 2),
        padding: const EdgeInsets.symmetric(horizontal: 1),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(
              width: 1,
              color: (history.selected
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.secondary)
                  .withOpacity(0.33),
            )),
        child: Text(history.value.toString(),
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: (history.selected
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.secondary)
                  .withOpacity(0.66),
            )),
      ),
    );
  }
}
