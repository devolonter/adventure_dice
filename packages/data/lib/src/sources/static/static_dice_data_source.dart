import 'package:domain/domain.dart';

import '../dice_data_source.dart';

class StaticDiceDataSource implements DiceDataSource {
  @override
  Future<List<Dice>> fetchAll() {
    return Future.value([
      Dice(2),
      Dice(4),
      Dice(6),
      Dice(8),
      Dice(10),
      Dice(12),
      Dice(20),
      Dice(100),
    ]);
  }
}