import 'package:flutter/material.dart';
// import 'package:master_cooking/pages/constants.dart';
// import 'package:flutter_screenutil/screenutil.dart';

import 'package:master_cooking/pages/online.dart';
import 'package:master_cooking/pages/profile.dart';
import 'package:master_cooking/models/recipe.dart';
import 'package:master_cooking/pages/view_recipe.dart';

List<Recipes> _recipeList = <Recipes>[
  Recipes(
      isFavorite: false,
      recipeNo: 1,
      recipeTag: 'Recipe1',
      recipeImgPath: 'assets/recipe_img/kacchib/kacchib3.jpg',
      recipeName: 'Kacchi Biriyani',
      recipeSubTitle: 'Co & Cookers'),
  Recipes(
      isFavorite: false,
      recipeNo: 2,
      recipeTag: 'Recipe2',
      recipeImgPath: 'assets/recipe_img/pizza/pizza3.jpg',
      recipeName: 'Pizza',
      recipeSubTitle: 'Co & Cookers'),
  Recipes(
      isFavorite: false,
      recipeNo: 3,
      recipeTag: 'Recipe3',
      recipeImgPath: 'assets/recipe_img/chickenb/chickenb1.jpg',
      recipeName: 'Chicken Biriyani',
      recipeSubTitle: 'Co & Cookers'),
  Recipes(
      isFavorite: false,
      recipeNo: 4,
      recipeTag: 'Recipe4',
      recipeImgPath: 'assets/recipe_img/roastd/roastd4.jpg',
      recipeName: 'Crisp Roast Duck',
      recipeSubTitle: 'Co & Cookers'),
  Recipes(
      isFavorite: false,
      recipeNo: 5,
      recipeTag: 'Recipe5',
      recipeImgPath: 'assets/recipe_img/applep/applep4.jpg',
      recipeName: 'Apple Pie',
      recipeSubTitle: 'Co & Cookers'),
  Recipes(
      isFavorite: false,
      recipeNo: 6,
      recipeTag: 'Recipe6',
      recipeImgPath: 'assets/recipe_img/chocolatec/chocolatec3.jpg',
      recipeName: 'Chocolate Cake',
      recipeSubTitle: 'Co & Cookers'),
  Recipes(
      isFavorite: false,
      recipeNo: 7,
      recipeTag: 'Recipe7',
      recipeImgPath: 'assets/recipe_img/beafr/beafr1.jpg',
      recipeName: 'Beaf Rezala',
      recipeSubTitle: 'Co & Cookers'),
];

class Home extends StatefulWidget {
  final String userImgPath = 'assets/images/chris.jpg';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Online(),
              ),
            );
          },
        ),
        title: Image.asset(
          'assets/images/logo.png',
        ),
        centerTitle: true,
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Profile(
                    userImgPath: widget.userImgPath,
                  ),
                ),
              );
            },
            child: CircleAvatar(
              backgroundImage: AssetImage(widget.userImgPath),
              radius: 20,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 8.0),
          ),
        ],
      ),
      backgroundColor: Colors.blue,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      child: Column(
                        children: <Widget>[
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ViewRecipe(
                                        isFavorite:
                                            _recipeList[index].isFavorite,
                                        recipeNo: _recipeList[index].recipeNo,
                                        recipeImagePath:
                                            _recipeList[index].recipeImgPath,
                                        recipeName:
                                            _recipeList[index].recipeName,
                                      ),
                                    ),
                                  );
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10.0),
                                    topLeft: Radius.circular(10.0),
                                  ),
                                  child: Hero(
                                    tag: _recipeList[index].recipeTag,
                                    child: Image.asset(
                                      _recipeList[index].recipeImgPath,
                                      fit: BoxFit.fitWidth,
                                      height: 250,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  right: 10.0,
                                  bottom: 10.0,
                                ),
                                child: _recipeList[index].isFavorite
                                    ? GestureDetector(
                                        onTap: () {
                                          setState(
                                            () {
                                              _recipeList[index].isFavorite =
                                                  false;
                                            },
                                          );
                                        },
                                        child: CircleAvatar(
                                          backgroundColor: Colors.red,
                                          radius: 25.0,
                                          child: Icon(
                                            Icons.favorite,
                                            color: Colors.white,
                                            size: 30.0,
                                          ),
                                        ),
                                      )
                                    : GestureDetector(
                                        onTap: () {
                                          setState(
                                            () {
                                              _recipeList[index].isFavorite =
                                                  true;
                                            },
                                          );
                                        },
                                        child: CircleAvatar(
                                          backgroundColor:
                                              Colors.grey.withOpacity(0.7),
                                          radius: 25.0,
                                          child: Icon(
                                            Icons.favorite_border,
                                            color: Colors.white,
                                            size: 30.0,
                                          ),
                                        ),
                                      ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ViewRecipe(
                                        isFavorite:
                                            _recipeList[index].isFavorite,
                                        recipeNo: _recipeList[index].recipeNo,
                                        recipeImagePath:
                                            _recipeList[index].recipeImgPath,
                                        recipeName:
                                            _recipeList[index].recipeName,
                                      ),
                                    ),
                                  );
                                },
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Text(
                                        _recipeList[index].recipeName,
                                        style: TextStyle(
                                          fontSize: 22.0,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Text(
                                        _recipeList[index].recipeSubTitle,
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: GestureDetector(
                                  onTap: () {
                                    //add the code for the 'add button' in here
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                      border:
                                          new Border.all(color: Colors.green),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.green,
                                        size: 20.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 6),
                          Container(
                            width: 150,
                            height: 4,
                            color: Colors.lightBlueAccent,
                          ),
                          SizedBox(height: 6),
                          Container(
                            width: 250,
                            height: 4,
                            color: Colors.lightBlueAccent,
                          ),
                          Divider(
                            color: Colors.lightBlueAccent,
                            thickness: 4,
                          ),
                        ],
                      ),
                    ),
                  );
                },
                itemCount: _recipeList.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// trying to apply dark theme in home screen
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: kDarkTheme,
//       home: HomeScreen(),
//     );
//   }
// }

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     ScreenUtil.init(context, height: 896, width: 414, allowFontScaling: true);
//     return Scaffold(
//       body: Container(),
//     );
//   }
// }
