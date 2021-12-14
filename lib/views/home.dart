import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipes_in_fp/models/recipe.dart';
import 'package:recipes_in_fp/widgets/recipe_card.dart';

class HomePage extends GetView {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('HomePage')),
        body: SafeArea(
          child: ListView.builder(
            itemCount: Recipe.samples.length,
            itemBuilder: (BuildContext context, int index) {
              //return RecipeCardWidget(recipe: Recipe.samples[index]);
              return GestureDetector(
                //return InkWell(
                onTap: () => Get.to(const Text('Detail Page'))
                //     Get.defaultDialog(
                //   title: 'Detail page',
                //   content: Text('Detail Page'),
                // )
                /*  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Text('Detail Page');
                  })); */
                ,
                child: RecipeCardWidget(recipe: Recipe.samples[index]),
              );
            },
          ),
        ));
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
