import 'package:flutter/material.dart';
import 'package:state/providers/counter_provider.dart';
import 'package:state/screens/screen.route.dart';
import 'package:provider/provider.dart';
import 'package:state/screens/second_screen.dart';
import 'package:state/shopping_card_provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => Counter()),
      ChangeNotifierProvider(create: (_) => ShoppingCart()),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Screenroute(),
        'second': (context) => SecondScreen(),
      },
    );
  }
}
