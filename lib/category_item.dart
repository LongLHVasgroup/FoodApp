// ignore_for_file: unnecessary_import

import 'dart:ui';

import 'package:flutter/material.dart';

import 'food_page.dart';
import 'models/category.dart';

class CategoryItem extends StatelessWidget {
  //fields
  final Category category;

  //constructor
  const CategoryItem({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    Color color = category.color;

    return InkWell(
      borderRadius: BorderRadius.circular(20), // boder nháy cho onTap
      onTap: () => {
        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //     builder: (_) => FoodPage(
        //       category: category,
        //     ),
        //   ),
        // ),

        Navigator.pushNamed(
          context,
          FoodPage.routeName,
          arguments: {'category': category},
        )
      },
      splashColor: const Color.fromARGB(255, 199, 176, 240), // màu nháy khi tap
      child: Ink(
        decoration: BoxDecoration(
          // image: const DecorationImage(
          //   image: NetworkImage(
          //       'https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
          //   fit: BoxFit.fill,
          // ),
          gradient: LinearGradient(
              colors: [color.withOpacity(0.5), color],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            category.content,
            style: const TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
