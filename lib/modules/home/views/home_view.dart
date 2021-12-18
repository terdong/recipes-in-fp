import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipes_in_fp/models/recipe.dart';
import 'package:recipes_in_fp/modules/home/controllers/home_controller.dart';
import 'package:recipes_in_fp/routes/app_pages.dart';
import 'package:recipes_in_fp/widgets/recipe_card.dart';

class HomeView extends GetResponsiveView<HomeController> {
  HomeView({Key? key}) : super(key: key);

  @override
  Widget builder() {
    return ListView.builder(
      itemCount: Recipe.samples.length,
      itemBuilder: (BuildContext context, int index) {
        //return GestureDetector(
        return InkWell(
          onTap: () =>
              Get.toNamed(Routes.detail, arguments: Recipe.samples[index]),
          /* Get.to(() => RecipeDetail(recipe: Recipe.samples[index])) */
          child: RecipeCardWidget(recipe: Recipe.samples[index]),
        );
      },
    );
  }

  Widget buildRecipeCard(Recipe recipe) {
    return Card(
      // 1
      elevation: 4.0,
      // 2
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      // 3
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        // 4
        child: Column(
          children: <Widget>[
            Image(image: AssetImage(recipe.imageUrl)),
            // 5
            const SizedBox(
              height: 14.0,
            ),
            // 6
            Text(
              recipe.label,
              style: GoogleFonts.caveat(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
              /* style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'Palatino',
              ), */
            )
          ],
        ),
      ),
    );
  }
}
