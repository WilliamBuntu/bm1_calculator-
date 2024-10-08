// import 'package:bm1/results_page.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(const BMICalculaator());
}

class BMICalculaator extends StatelessWidget {
  const BMICalculaator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          appBarTheme: const AppBarTheme(backgroundColor: Color(0xFF0A0E21)),
          primaryColor: const Color(0xFF0A0E21),
          scaffoldBackgroundColor: const Color(0xFF0A0E21)),
      // home: const InputPage(),
      initialRoute: '/',
      routes: {
        '/': (context) => const InputPage(),
        // '/results': (context) => const ResultsPage(),
      },
    );
  }
}
