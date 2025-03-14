import 'package:flutter/material.dart';
import 'recipe.dart';

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;

  const RecipeDetail({
    super.key,
    required this.recipe,
  });

  @override
  State<RecipeDetail> createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  // TODO: add _sliderVal

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.label),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(
                image: AssetImage(widget.recipe.imageUrl),
              ),
            ),
            const SizedBox(
              height: 4.0
            ),
            Text(
              widget.recipe.label,
              style: const TextStyle(fontSize: 18.0),
            ),
            // TODO: add Expanded
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(7.0),
                itemCount: widget.recipe.ingredients.length,
                itemBuilder: (BuildContext context, int index) {
                  final ingredient = widget.recipe.ingredients[index];
                  // TODO: add ingredient.quantity
                  return Text(
                    '${ingredient.quantity} ${ingredient.measure} ${ingredient.name}',
                  );
                },
              ),
            ),
            // TODO: add Slider
          ],
        ),
      ),
    );
  }
}