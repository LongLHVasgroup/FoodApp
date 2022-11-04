// ignore_for_file: must_be_immutable, unused_import

import 'package:flutter/material.dart';
import 'package:foodapp/fake_data.dart';
import 'package:foodapp/food_detail_page.dart';
import 'package:foodapp/models/category.dart';
import 'package:transparent_image/transparent_image.dart';
import 'models/food.dart';

class FoodPage extends StatelessWidget {
  //Fields
  static const String routeName = '/FoodPage';
  Category? category;

  //Contructor
  FoodPage({super.key, this.category});

  @override
  Widget build(BuildContext context) {
    Map<dynamic, dynamic> arguments =
        ModalRoute.of(context)?.settings.arguments as Map;

    category = arguments['category'];

    List<Food> foods = FAKE_FOODS
        .where((element) => element.categoryId == category?.id)
        .toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(category!.content),
        centerTitle: true,
      ),
      body: Center(
        child: foods.isNotEmpty
            ? ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  Food food = foods[index];
                  return Container(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 15,
                      bottom: 15,
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => FoodDetailPage(food: food),
                          ),
                        );
                      },
                      child: Ink(
                        child: Stack(children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Center(
                              child: FadeInImage.assetNetwork(
                                placeholder:
                                    'assets/loading/Spinner-0.8s-200px.gif', //ảnh khi loading
                                image: food.urlImage.toString(),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 10,
                            left: 10,
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.black54,
                                border:
                                    Border.all(color: Colors.white, width: 1.5),
                              ),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.timer_sharp,
                                    size: 20,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    ' ${food.duration?.inMinutes} minutes',
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            top: 10,
                            right: 10,
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: colorComplexity(food.complexity!),
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    '${food.complexity?.name}',
                                    style: const TextStyle(
                                        color: Colors.black87, fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            right: 10,
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.black54),
                              child: Row(
                                children: [
                                  Text(
                                    '${food.name}',
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ]),
                      ),
                    ),
                  );
                },
                itemCount: foods.length)
            : const Center(
                child: Text('No food Found'),
              ),
      ),
    );
  }

  Color? colorComplexity(Complexity complex) {
    Color? color;
    switch (complex) {
      case Complexity.Easy:
        color = Colors.green;
        break;
      case Complexity.Medium:
        color = Colors.yellow;
        break;
      case Complexity.Simple:
        color = Colors.red;
        break;
      default:
        return color;
    }
    return color;
  }
}
