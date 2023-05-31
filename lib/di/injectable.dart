import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:get_it/get_it.dart';

Future configureDependencies() async {
  final getIt = GetIt.I;
  final DiceRepository diceRepository = DiceRepositoryImpl(
    StaticDiceDataSource(),
  );

  getIt.registerSingleton<GetAllDiceUseCase>(GetAllDiceUseCase(diceRepository));
}
