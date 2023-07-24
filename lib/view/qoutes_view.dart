import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gitit_dependencyinjection/domain/quotes_controller.dart';
import 'package:gitit_dependencyinjection/locator.dart';
import 'package:gitit_dependencyinjection/model/quote.dart';

class QuotesView extends StatefulWidget {
  const QuotesView({Key? key}) : super(key: key);

  @override
  State<QuotesView> createState() => _QuotesViewState();
}

class _QuotesViewState extends State<QuotesView> {
  Quote? displayQuote;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quote View"),
      ),
      body:
      displayQuote == null
          ? const Text("No Quote Available")
          :
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('"${displayQuote?.sentence ?? ""}"',
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 20, fontStyle: FontStyle.italic)),
            const SizedBox(height: 10),
            Text("- ${displayQuote?.character ?? ""}")
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _changeQuote();
        },
        tooltip: 'Next',
        child: const Icon(Icons.arrow_forward_ios_rounded),
      ),

    );

  }

  Future<void> _changeQuote() async {

     Quote quote = await locator.get<QuoteController>().getQuote();

    //TODO 7: Call the setState method to update the UI
    setState(() {
      displayQuote = quote;
    });
  }

}
