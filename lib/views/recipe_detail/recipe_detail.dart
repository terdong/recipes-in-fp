import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipes_in_fp/models/ingredient.dart';
import 'package:recipes_in_fp/models/recipe.dart';
import 'package:recipes_in_fp/utils/logger_provider.dart';
import 'package:recipes_in_fp/views/recipe_detail/recipe_detail_controller.dart';

class RecipeDetail extends GetResponsiveView<RecipeDetailController>
    with LoggerProvider {
/*   const RecipeDetail({Key? key, required this.recipe}) : super(key: key); */
  RecipeDetail({Key? key}) : super(key: key);

  //final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    Get.put(RecipeDetailController());
    Recipe recipe = Get.arguments as Recipe;
    return Scaffold(
        appBar: AppBar(title: Text(recipe.label)),
        body: SafeArea(
          child: Center(
            child: Container(
              constraints: const BoxConstraints(maxWidth: 800),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 300,
                    width: double.infinity,
                    child: Image(image: AssetImage(recipe.imageUrl)),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(recipe.label, style: const TextStyle(fontSize: 18)),
                  Expanded(
                    child: ListView.builder(
                      padding: const EdgeInsets.all(7.0),
                      itemCount: recipe.ingredients.length,
                      itemBuilder: (context, index) {
                        final Ingredient ingredient = recipe.ingredients[index];
                        logv(ingredient.toJson().toString());
                        return Obx(() => Text(
                            '${ingredient.quantity * controller.sliderVal} ${ingredient.measure} ${ingredient.name}'));
                      },
                    ),
                  ),
                  Obx(() => Slider(
                        min: 1,
                        max: 10,
                        divisions: 9,
                        label:
                            '${controller.sliderVal * recipe.servings} servings',
                        value: controller.sliderVal.toDouble(),
                        onChanged: (value) {
                          controller.sliderVal = value.round();
                        },
                        activeColor: Colors.green,
                        inactiveColor: Colors.black,
                      ))
                ],
              ),
            ),
          ),
        ));
  }
}
