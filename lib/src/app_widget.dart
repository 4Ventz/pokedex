import 'package:flutter/material.dart';
import 'package:pokedex/src/modules/details/details_page.dart';
import 'package:pokedex/src/modules/list/list_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'pokedex',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/list',
      routes: {
        '/list': (context) => const ListPage(),
        '/details': (context) => DetailsPage(),
      },
    );
  }
}
