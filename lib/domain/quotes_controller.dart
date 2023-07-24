import 'package:gitit_dependencyinjection/locator.dart';
import 'package:gitit_dependencyinjection/model/quote.dart';
import 'package:gitit_dependencyinjection/repository/quote_repo.dart';

class QuoteController{

  Future<Quote> getQuote()async{

    return locator.get<QuoteRepo>().getQuote();
  }
}