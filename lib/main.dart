import 'package:flutter/material.dart';
import 'package:gitit_dependencyinjection/locator.dart';
import 'package:gitit_dependencyinjection/view/qoutes_view.dart';

void main() {

  ///TODO 4: call the setupLocator method and initialize the service
  setUpLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: QuotesView(),
    );
  }
}
