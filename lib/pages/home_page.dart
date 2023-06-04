import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/dice.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final config = ref.watch(appDiceProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Adventure Dice'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
          ),
          itemCount: config.value?.length ?? 0,
          itemBuilder: (context, index) {
            final dice = config.value![index];
            return Card(
              child: Center(
                child: Text(
                  dice.sides.toString()
                ),
              ),
            );
          }
        ),
      ),
    );
  }
}
