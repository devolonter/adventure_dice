import 'package:domain/domain.dart';
import 'package:data/data.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dice.g.dart';

@riverpod
Future<List<Dice>> getAllDice(GetAllDiceRef ref) =>
  GetAllDice(
      DiceRepositoryImpl(
          StaticDiceDataSource()
      )
  )();
