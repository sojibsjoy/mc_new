import 'package:flutter/material.dart';

class Recipes {
  bool isFavorite;
  final int recipeNo;
  final String recipeTag;
  final String recipeImgPath;
  final String recipeName;
  final String recipeSubTitle;
  Recipes({
    @required this.isFavorite,
    @required this.recipeNo,
    @required this.recipeTag,
    @required this.recipeImgPath,
    @required this.recipeName,
    @required this.recipeSubTitle,
  });
}
