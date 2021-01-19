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
      widget.recipeDetails = await getFileData('assets/recipes/borhani.txt');
      widget.images = manifestMap.keys
          .where((String key) => key.contains('recipe_img/borhani/'))
          .where((String key) => key.contains('.jpg'))
          .toList();
    } else if (widget.recipeNo == 8) {
      widget.recipeDetails = await getFileData('assets/recipes/chickenm.txt');
      widget.images = manifestMap.keys
          .where((String key) => key.contains('recipe_img/chickenm/'))
          .where((String key) => key.contains('.jpg'))
          .toList();
    } else if (widget.recipeNo == 9) {
      widget.recipeDetails = await getFileData('assets/recipes/coffee.txt');
      widget.images = manifestMap.keys
          .where((String key) => key.contains('recipe_img/coffee/'))
          .where((String key) => key.contains('.jpg'))
          .toList();
    } else if (widget.recipeNo == 10) {
      widget.recipeDetails = await getFileData('assets/recipes/donuts.txt');
      widget.images = manifestMap.keys
          .where((String key) => key.contains('recipe_img/donuts/'))
          .where((String key) => key.contains('.jpg'))
          .toList();
    } else if (widget.recipeNo == 11) {
      widget.recipeDetails = await getFileData('assets/recipes/friedrice.txt');
      widget.images = manifestMap.keys
          .where((String key) => key.contains('recipe_img/friedrice/'))
          .where((String key) => key.contains('.jpg'))
          .toList();
    } else if (widget.recipeNo == 12) {
      widget.recipeDetails = await getFileData('assets/recipes/chickenfry.txt');
      widget.images = manifestMap.keys
          .where((String key) => key.contains('recipe_img/chickenfry/'))
          .where((String key) => key.contains('.jpg'))
          .toList();
    } else if (widget.recipeNo == 13) {
      widget.recipeDetails = await getFileData('assets/recipes/chineseveg.txt');
      widget.images = manifestMap.keys
          .where((String key) => key.contains('recipe_img/chineseveg/'))
          .where((String key) => key.contains('.jpg'))
          .toList();
    } else if (widget.recipeNo == 14) {
      widget.recipeDetails = await getFileData('assets/recipes/custard.txt');
      widget.images = manifestMap.keys
          .where((String key) => key.contains('recipe_img/custard/'))
          .where((String key) => key.contains('.jpg'))
          .toList();
    } else if (widget.recipeNo == 15) {
      widget.recipeDetails = await getFileData('assets/recipes/pooding.txt');
      widget.images = manifestMap.keys
          .where((String key) => key.contains('recipe_img/pooding/'))
          .where((String key) => key.contains('.jpg'))
          .toList();
    } else if (widget.recipeNo == 16) {
      widget.recipeDetails =
          await getFileData('assets/recipes/shorsheilish.txt');
      widget.images = manifestMap.keys
          .where((String key) => key.contains('recipe_img/shorsheilish/'))
          .where((String key) => key.contains('.jpg'))
          .toList();
    } else if (widget.recipeNo == 17) {
      widget.recipeDetails = await getFileData('assets/recipes/kalavuna.txt');
      widget.images = manifestMap.keys
          .where((String key) => key.contains('recipe_img/kalavuna/'))
          .where((String key) => key.contains('.jpg'))
          .toList();
    } else if (widget.recipeNo == 18) {
      widget.recipeDetails =
          await getFileData('assets/recipes/beefshashlik.txt');
      widget.images = manifestMap.keys
          .where((String key) => key.contains('recipe_img/beefshashlik/'))
          .where((String key) => key.contains('.jpg'))
          .toList();
    } else if (widget.recipeNo == 19) {
      widget.recipeDetails = await getFileData('assets/recipes/chawmein.txt');
      widget.images = manifestMap.keys
          .where((String key) => key.contains('recipe_img/chawmein/'))
          .where((String key) => key.contains('.jpg'))
          .toList();
    } else if (widget.recipeNo == 20) {
      widget.recipeDetails =
          await getFileData('assets/recipes/chickensharma.txt');
      widget.images = manifestMap.keys
          .where((String key) => key.contains('recipe_img/chickensharma/'))
          .where((String key) => key.contains('.jpg'))
          .toList();
    } else if (widget.recipeNo == 21) {
      widget.recipeDetails =
          await getFileData('assets/recipes/chingrimalaikari.txt');
      widget.images = manifestMap.keys
          .where((String key) => key.contains('recipe_img/chingrimalaikari/'))
          .where((String key) => key.contains('.jpg'))
          .toList();
    } else if (widget.recipeNo == 22) {
      widget.recipeDetails = await getFileData('assets/recipes/chotpoti.txt');
      widget.images = manifestMap.keys
          .where((String key) => key.contains('recipe_img/chotpoti/'))
          .where((String key) => key.contains('.jpg'))
          .toList();
    } else if (widget.recipeNo == 23) {
      widget.recipeDetails = await getFileData('assets/recipes/cookies.txt');
      widget.images = manifestMap.keys
          .where((String key) => key.contains('recipe_img/cookies/'))
          .where((String key) => key.contains('.jpg'))
          .toList();
    } else if (widget.recipeNo == 24) {
      widget.recipeDetails = await getFileData('assets/recipes/eggchop.txt');
      widget.images = manifestMap.keys
          .where((String key) => key.contains('recipe_img/eggchop/'))
          .where((String key) => key.contains('.jpg'))
          .toList();
    } else if (widget.recipeNo == 25) {
      widget.recipeDetails = await getFileData('assets/recipes/fishcurry.txt');
      widget.images = manifestMap.keys
          .where((String key) => key.contains('recipe_img/fishcurry/'))
          .where((String key) => key.contains('.jpg'))
          .toList();
    } else if (widget.recipeNo == 26) {
      widget.recipeDetails = await getFileData('assets/recipes/halim.txt');
      widget.images = manifestMap.keys
          .where((String key) => key.contains('recipe_img/halim/'))
          .where((String key) => key.contains('.jpg'))
          .toList();
    } else if (widget.recipeNo == 27) {
      widget.recipeDetails = await getFileData('assets/recipes/jilapi.txt');
      widget.images = manifestMap.keys
          .where((String key) => key.contains('recipe_img/jilapi/'))
          .where((String key) => key.contains('.jpg'))
          .toList();
    } else if (widget.recipeNo == 28) {
      widget.recipeDetails = await getFileData('assets/recipes/masalatea.txt');
      widget.images = manifestMap.keys
          .where((String key) => key.contains('recipe_img/masalatea/'))
          .where((String key) => key.contains('.jpg'))
          .toList();
    } else if (widget.recipeNo == 29) {
      widget.recipeDetails = await getFileData('assets/recipes/redvelvet.txt');
      widget.images = manifestMap.keys
          .where((String key) => key.contains('recipe_img/redvelvet/'))
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
