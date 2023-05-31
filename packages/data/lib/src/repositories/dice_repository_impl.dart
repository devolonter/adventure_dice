import 'package:domain/domain.dart';

import '../sources/dice_data_source.dart';

class DiceRepositoryImpl implements DiceRepository {
  final DiceDataSource _diceDataSource;

  DiceRepositoryImpl(this._diceDataSource);

  @override
  Future<List<Dice>> getAll() => _diceDataSource.fetchAll();
}