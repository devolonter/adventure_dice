import 'package:domain/domain.dart';
import 'package:data/data.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dice.g.dart';

@riverpod
class DiceList extends _$DiceList {
  late final DiceRepository _diceRepository;
  late final GetAllDice _getAllDice;

  @override
  FutureOr<List<Die>> build() async {
    _diceRepository = DiceRepositoryImpl(
      StaticDiceDataSource()
    );
    _getAllDice = GetAllDice(_diceRepository);
    return _getAllDice();
  }
}