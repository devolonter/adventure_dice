import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injectable.config.dart';

final GetIt getIt = GetIt.I;

@InjectableInit()
GetIt configureDependencies() => getIt.init();