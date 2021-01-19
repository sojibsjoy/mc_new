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
      recipeImgPath: 'assets/recipe_img/borhani/borhani1.jpg',
      recipeName: 'Borhani',
      recipeSubTitle: 'Co & Cookers'),
  Recipes(
      isFavorite: false,
      recipeNo: 8,
      recipeTag: 'Recipe8',
      recipeImgPath: 'assets/recipe_img/chickenm/chickenm2.jpg',
      recipeName: 'Chicken Manchurian',
      recipeSubTitle: 'Co & Cookers'),
  Recipes(
      isFavorite: false,
      recipeNo: 9,
      recipeTag: 'Recipe9',
      recipeImgPath: 'assets/recipe_img/coffee/coffee3.jpg',
      recipeName: 'Coffee',
      recipeSubTitle: 'Co & Cookers'),
  Recipes(
      isFavorite: false,
      recipeNo: 10,
      recipeTag: 'Recipe10',
      recipeImgPath: 'assets/recipe_img/donuts/donuts3.jpg',
      recipeName: 'Donuts',
      recipeSubTitle: 'Co & Cookers'),
  Recipes(
      isFavorite: false,
      recipeNo: 11,
      recipeTag: 'Recipe11',
      recipeImgPath: 'assets/recipe_img/friedrice/rice4.jpg',
      recipeName: 'Fried Rice',
      recipeSubTitle: 'Co & Cookers'),
  Recipes(
      isFavorite: false,
      recipeNo: 12,
      recipeTag: 'Recipe12',
      recipeImgPath: 'assets/recipe_img/chickenfry/chickenf3.jpg',
      recipeName: 'Chicken Fry',
      recipeSubTitle: 'Co & Cookers'),
  Recipes(
      isFavorite: false,
      recipeNo: 13,
      recipeTag: 'Recipe13',
      recipeImgPath: 'assets/recipe_img/chineseveg/veg3.jpg',
      recipeName: 'Chinese Vegetables',
      recipeSubTitle: 'Co & Cookers'),
  Recipes(
      isFavorite: false,
      recipeNo: 14,
      recipeTag: 'Recipe14',
      recipeImgPath: 'assets/recipe_img/custard/custard2.jpg',
      recipeName: 'Custard',
      recipeSubTitle: 'Co & Cookers'),
  Recipes(
      isFavorite: false,
      recipeNo: 15,
      recipeTag: 'Recipe15',
      recipeImgPath: 'assets/recipe_img/pooding/pooding1.jpg',
      recipeName: 'Pooding',
      recipeSubTitle: 'Co & Cookers'),
  Recipes(
      isFavorite: false,
      recipeNo: 16,
      recipeTag: 'Recipe16',
      recipeImgPath: 'assets/recipe_img/shorsheilish/ilish2.jpg',
      recipeName: 'Shorshe Ilish',
      recipeSubTitle: 'Co & Cookers'),
  Recipes(
      isFavorite: false,
      recipeNo: 17,
      recipeTag: 'Recipe17',
      recipeImgPath: 'assets/recipe_img/kalavuna/kala2.jpg',
      recipeName: 'Kala Vuna',
      recipeSubTitle: 'Co & Cookers'),
  Recipes(
      isFavorite: false,
      recipeNo: 18,
      recipeTag: 'Recipe18',
      recipeImgPath: 'assets/recipe_img/beefshashlik/beefsha3.jpg',
      recipeName: 'Beef Shashlik',
      recipeSubTitle: 'Co & Cookers'),
  Recipes(
      isFavorite: false,
      recipeNo: 19,
      recipeTag: 'Recipe19',
      recipeImgPath: 'assets/recipe_img/chawmein/chm.jpg',
      recipeName: 'chawmein',
      recipeSubTitle: 'Co & Cookers'),
  Recipes(
      isFavorite: false,
      recipeNo: 20,
      recipeTag: 'Recipe20',
      recipeImgPath: 'assets/recipe_img/chickensharma/chknsh2.jpg',
      recipeName: 'Chicken Sharma',
      recipeSubTitle: 'Co & Cookers'),
  Recipes(
      isFavorite: false,
      recipeNo: 21,
      recipeTag: 'Recipe21',
      recipeImgPath: 'assets/recipe_img/chingrimalaikari/malai.jpg',
      recipeName: 'Chingri Malaikari',
      recipeSubTitle: 'Co & Cookers'),
  Recipes(
      isFavorite: false,
      recipeNo: 22,
      recipeTag: 'Recipe22',
      recipeImgPath: 'assets/recipe_img/chotpoti/chtpti3.jpg',
      recipeName: 'Chotpoti',
      recipeSubTitle: 'Co & Cookers'),
  Recipes(
      isFavorite: false,
      recipeNo: 23,
      recipeTag: 'Recipe23',
      recipeImgPath: 'assets/recipe_img/cookies/cks5.jpg',
      recipeName: 'Cookies',
      recipeSubTitle: 'Co & Cookers'),
  Recipes(
      isFavorite: false,
      recipeNo: 24,
      recipeTag: 'Recipe24',
      recipeImgPath: 'assets/recipe_img/eggchop/egg3.jpg',
      recipeName: 'Egg Chop',
      recipeSubTitle: 'Co & Cookers'),
  Recipes(
      isFavorite: false,
      recipeNo: 25,
      recipeTag: 'Recipe25',
      recipeImgPath: 'assets/recipe_img/fishcurry/fish4.jpg',
      recipeName: 'Fish Curry',
      recipeSubTitle: 'Co & Cookers'),
  Recipes(
      isFavorite: false,
      recipeNo: 26,
      recipeTag: 'Recipe26',
      recipeImgPath: 'assets/recipe_img/halim/hlm4.jpg',
      recipeName: 'Halim',
      recipeSubTitle: 'Co & Cookers'),
  Recipes(
      isFavorite: false,
      recipeNo: 27,
      recipeTag: 'Recipe27',
      recipeImgPath: 'assets/recipe_img/jilapi/j2.jpg',
      recipeName: 'Jilapi',
      recipeSubTitle: 'Co & Cookers'),
  Recipes(
      isFavorite: false,
      recipeNo: 28,
      recipeTag: 'Recipe28',
      recipeImgPath: 'assets/recipe_img/masalatea/tea.jpg',
      recipeName: 'Masala Tea',
      recipeSubTitle: 'Co & Cookers'),
  Recipes(
      isFavorite: false,
      recipeNo: 29,
      recipeTag: 'Recipe29',
      recipeImgPath: 'assets/recipe_img/redvelvet/red3.jpg',
      recipeName: 'Red Velvet',
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
