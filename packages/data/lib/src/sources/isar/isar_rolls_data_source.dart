import 'package:domain/src/entities/roll.dart';
import 'package:isar/isar.dart';

import '../../models/isar/isar_roll_model.dart';
import '../rolls_data_source.dart';

class IsarRollsDataSource implements RollsDataSource {
  Isar _isar;

  IsarRollsDataSource(this._isar);

  @override
  Future<List<Roll>> fetchAll() async {
    final List<IsarRollModel> isarRolls =
        await _isar.collection<IsarRollModel>().where().findAll();
    return isarRolls.map((e) => e.toEntity()).toList();
  }

  @override
  Future<void> save(List<Roll> rolls) {
    return _isar.writeTxn(() async {
      for (final roll in rolls) {
        await _isar
            .collection<IsarRollModel>()
            .put(IsarRollModel.fromEntity(roll));
      }
    });
  }

  @override
  Future<void> clear() =>
      _isar.writeTxn(() => _isar.collection<IsarRollModel>().clear());
}
