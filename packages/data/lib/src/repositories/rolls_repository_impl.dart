import 'package:domain/domain.dart';

import '../sources//rolls_data_source.dart';

class RollsRepositoryImpl implements RollsRepository {
  final RollsDataSource _rollsDataSource;

  RollsRepositoryImpl(this._rollsDataSource);

  @override
  Future<void> clear() => _rollsDataSource.clear();

  @override
  Future<List<Roll>> getAll() => _rollsDataSource.fetchAll();

  @override
  Future<void> save(Roll roll) => _rollsDataSource.save(roll);
}