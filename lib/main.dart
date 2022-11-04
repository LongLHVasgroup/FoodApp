import 'package:flutter/material.dart';

import 'categories_page.dart';
import 'food_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: '/', // root route
      routes: {
        FoodPage.routeName: (context) => FoodPage(),
        CategoriesPage.routeName: (context) => const CategoriesPage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.orange,
        fontFamily: 'Alfa_Slab_One',
      ),
      home: const MyHomePage(title: 'FOOD CATEGORIES'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.black87),
        ),
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: CategoriesPage(),
      ),
    );
  }
}
