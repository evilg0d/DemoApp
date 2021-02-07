import 'package:demo_app/src/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@injectableInit
configureInjection() {
  $initGetIt(getIt);
}
