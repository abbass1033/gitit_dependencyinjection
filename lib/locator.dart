
import 'package:get_it/get_it.dart';
import 'package:gitit_dependencyinjection/domain/quotes_controller.dart';
import 'package:gitit_dependencyinjection/repository/quote_repo.dart';

/// TODO 2: Create a getIt locator
final locator = GetIt.instance;

/// TODO 3: Create a setup method and own service
void setUpLocator(){
  locator.registerLazySingleton<QuoteRepo>(() => QuoteRepo());
  locator.registerLazySingleton<QuoteController>(() => QuoteController());
}