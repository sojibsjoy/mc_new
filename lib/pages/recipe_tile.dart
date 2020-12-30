import 'package:flutter/material.dart';
import 'package:master_cooking/models/db_recipe.dart';

class RecipeTile extends StatelessWidget {
  final OnlineRecipe recipe;
  RecipeTile({this.recipe});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 12),
      height: 125.0,
      width: 250.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: Colors.grey[100],
      ),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              image: DecorationImage(
                image: NetworkImage(recipe.rImgPath),
              ),
            ),
            height: 125.0,
            width: 90.0,
          ),
          SizedBox(width: 20.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                recipe.rTitle,
                style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                recipe.rSubTitle,
                style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                height: 2.0,
                width: 75.0,
                color: Colors.orange,
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: 25.0,
                    width: 25.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.5),
                      image: DecorationImage(
                          image: AssetImage('assets/images/chris.jpg')),
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Text('James Oliver',
                      style: TextStyle(fontFamily: 'Quicksand'))
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
