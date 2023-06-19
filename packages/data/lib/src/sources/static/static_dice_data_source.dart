import 'package:domain/domain.dart';

import '../dice_data_source.dart';

class StaticDiceDataSource implements DiceDataSource {
  @override
  Future<List<Die>> fetchAll() {
    return Future.value([
      Die(2),
      Die(4),
      Die(6),
      Die(8),
      Die(10),
      Die(12),
      Die(20),
      Die(100),
    ]);
  }
}