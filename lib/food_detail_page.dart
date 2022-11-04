// ignore_for_file: must_be_immutable, unused_import

import 'package:flutter/material.dart';
import 'package:foodapp/fake_data.dart';
import 'package:foodapp/models/food.dart';

import 'models/category.dart';

class FoodDetailPage extends StatelessWidget {
  Food? food;

  FoodDetailPage({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: FadeInImage.assetNetwork(
                placeholder:
                    'assets/loading/Spinner-0.8s-200px.gif', //ảnh khi loading
                image: food!.urlImage.toString(),
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 10)),
            const Text(
              'Ingredients',
              style: TextStyle(fontSize: 18),
            ),

            //Triển khai ListView phải cho biết chiều height bao nhiêu
            // Bỏ vào Conainer và set height
            //Nếu Column thì set thì bỏ vào widget Expanded để lấy hết khoản trống còn lại
            Expanded(
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: food!.ingredients?.length,
                  itemBuilder: (context, index) {
                    String ingredients = food!.ingredients![index];
                    return ListTile(
                      leading: CircleAvatar(child: Text('#${index + 1}')),
                      title: Text(ingredients),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
