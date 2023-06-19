import 'package:domain/domain.dart';

abstract class DiceDataSource {
  Future<List<Die>> fetchAll();
}