import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/dice_rolls.dart';
import 'list_roll_item.dart';

final currentRollProvider =
    Provider<Roll>((ref) => throw UnimplementedError());

class ListRolls extends ConsumerWidget {
  const ListRolls({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<Roll>> rolls = ref.watch(diceRollsProvider);

    return rolls.when(
      data: (rolls) {
        final ScrollController scrollController = ScrollController();

        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (scrollController.hasClients) {
            scrollController.jumpTo(scrollController.position.maxScrollExtent);
          }
        });

        return Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Flexible(
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: rolls.length,
                padding: EdgeInsets.zero,
                controller: scrollController,
                itemBuilder: (context, index) {
                  return ProviderScope(overrides: [
                    currentRollProvider.overrideWithValue(rolls[index])
                  ], child: const ListRollItem());
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(height: 4);
                },
              ),
            ),
          ],
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stackTrace) => const SizedBox.shrink(),
    );
  }
}
