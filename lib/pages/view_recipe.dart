import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

import 'package:flutter/material.dart';
import 'package:master_cooking/pages/description.dart';
import 'package:master_cooking/pages/gallery.dart';
import 'package:master_cooking/pages/reviews.dart';

class ViewRecipe extends StatefulWidget {
  final bool isFavorite;
  final int recipeNo;
  final String recipeImagePath;
  final String recipeName;
  String recipeDetails;

  List<String> images;
  List<Widget> containers;

  ViewRecipe({
    @required this.isFavorite,
    @required this.recipeNo,
    @required this.recipeImagePath,
    @required this.recipeName,
  });

  @override
  _ViewRecipeState createState() => _ViewRecipeState();
}

class _ViewRecipeState extends State<ViewRecipe> {
  Future<String> getFileData(String path) async {
    return await rootBundle.loadString(path);
  }

  Future<List> _initImages() async {
    // >> To get paths you need these 2 lines
    final manifestContent =
        await DefaultAssetBundle.of(context).loadString('AssetManifest.json');

    final Map<String, dynamic> manifestMap = json.decode(manifestContent);
    // >> To get paths you need these 2 lines

    if (widget.recipeNo == 1) {
      widget.recipeDetails = await getFileData('assets/recipes/kacchib.txt');
      widget.images = manifestMap.keys
          .where((String key) => key.contains('recipe_img/kacchib/'))
          .where((String key) => key.contains('.jpg'))
          .toList();
    } else if (widget.recipeNo == 2) {
      widget.recipeDetails = await getFileData('assets/recipes/pizza.txt');
      widget.images = manifestMap.keys
          .where((String key) => key.contains('recipe_img/pizza/'))
          .where((String key) => key.contains('.jpg'))
          .toList();
    } else if (widget.recipeNo == 3) {
      widget.recipeDetails = await getFileData('assets/recipes/chickenb.txt');
      widget.images = manifestMap.keys
          .where((String key) => key.contains('recipe_img/chickenb/'))
          .where((String key) => key.contains('.jpg'))
          .toList();
    } else if (widget.recipeNo == 4) {
      widget.recipeDetails = await getFileData('assets/recipes/roastd.txt');
      widget.images = manifestMap.keys
          .where((String key) => key.contains('recipe_img/roastd/'))
          .where((String key) => key.contains('.jpg'))
          .toList();
    } else if (widget.recipeNo == 5) {
      widget.recipeDetails = await getFileData('assets/recipes/applep.txt');
      widget.images = manifestMap.keys
          .where((String key) => key.contains('recipe_img/applep/'))
          .where((String key) => key.contains('.jpg'))
          .toList();
    } else if (widget.recipeNo == 6) {
      widget.recipeDetails = await getFileData('assets/recipes/chocolatec.txt');
      widget.images = manifestMap.keys
          .where((String key) => key.contains('recipe_img/chocolatec/'))
          .where((String key) => key.contains('.jpg'))
          .toList();
    } else if (widget.recipeNo == 7) {
      widget.recipeDetails = await getFileData('assets/recipes/beafr.txt');
      widget.images = manifestMap.keys
          .where((String key) => key.contains('recipe_img/beafr/'))
          .where((String key) => key.contains('.jpg'))
          .toList();
    }
    widget.containers = <Widget>[
      Description(
        isFavorite: widget.isFavorite,
        recipeImgPath: widget.recipeImagePath,
        recipeNm: widget.recipeName,
        recipeDtls: widget.recipeDetails,
      ),
      Gallery(
        images: (widget.images),
      ),
      Reviews(
        recipeNo: widget.recipeNo,
      ),
    ];
    return widget.images;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initImages(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return DefaultTabController(
            length: 3,
            initialIndex: 0,
            child: Scaffold(
              body: TabBarView(
                children: widget.containers,
              ),
              bottomSheet: PreferredSize(
                preferredSize: Size.square(10),
                child: TabBar(
                  indicatorColor: Colors.green,
                  indicatorWeight: 5.0,
                  labelColor: Colors.green,
                  unselectedLabelColor: Colors.grey,
                  tabs: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Text(
                        "Description",
                        style: TextStyle(fontSize: 16.0, letterSpacing: 0.5),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Text(
                        "Gallery",
                        style: TextStyle(fontSize: 16.0, letterSpacing: 0.5),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Text(
                        "Reviews",
                        style: TextStyle(fontSize: 16.0, letterSpacing: 0.5),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
