import 'package:flutter/material.dart';
import 'package:master_cooking/pages/review_item.dart';

class Reviews extends StatefulWidget {
  final int recipeNo;

  List<Widget> reviewList;

  Reviews({@required this.recipeNo});

  void checkRecipeNo() {
    if (recipeNo == 1) {
      reviewList = <Widget>[
        ReviewItem(
          userImgPath: 'assets/images/cartoon.jpg',
          userName: 'Md. Sojib Sarkar',
          userReview: '4.2/5',
        ),
        ReviewItem(
          userImgPath: 'assets/images/cartoon.jpg',
          userName: 'Mehedi Hasan',
          userReview: '4.3/5',
        ),
      ];
    } else if (recipeNo == 2) {
      reviewList = <Widget>[
        ReviewItem(
          userImgPath: 'assets/images/cartoon.jpg',
          userName: 'Afia Arefin',
          userReview: '4.5/5',
        ),
        ReviewItem(
          userImgPath: 'assets/images/cartoon.jpg',
          userName: 'Tanvir Shorif',
          userReview: '5/5',
        ),
        ReviewItem(
          userImgPath: 'assets/images/cartoon.jpg',
          userName: 'Shohel Rana',
          userReview: '4/5',
        ),
      ];
    } else if (recipeNo == 3) {
      reviewList = <Widget>[
        ReviewItem(
          userImgPath: 'assets/images/cartoon.jpg',
          userName: 'Sojib Sarkar',
          userReview: '4.5/5',
        ),
        ReviewItem(
          userImgPath: 'assets/images/cartoon.jpg',
          userName: 'Afia Arefin',
          userReview: '5/5',
        ),
        ReviewItem(
          userImgPath: 'assets/images/cartoon.jpg',
          userName: 'Mehedi Hasan',
          userReview: '4/5',
        ),
      ];
    } else if (recipeNo == 4) {
      reviewList = <Widget>[
        ReviewItem(
          userImgPath: 'assets/images/cartoon.jpg',
          userName: 'Afia Arefin',
          userReview: '4.5/5',
        ),
        ReviewItem(
          userImgPath: 'assets/images/cartoon.jpg',
          userName: 'Tanvir Shorif',
          userReview: '5/5',
        ),
        ReviewItem(
          userImgPath: 'assets/images/cartoon.jpg',
          userName: 'Sojib Sarkar',
          userReview: '4/5',
        ),
      ];
    } else if (recipeNo == 5) {
      reviewList = <Widget>[
        ReviewItem(
          userImgPath: 'assets/images/cartoon.jpg',
          userName: 'Tanvir Shorif',
          userReview: '4.5/5',
        ),
        ReviewItem(
          userImgPath: 'assets/images/cartoon.jpg',
          userName: 'Shohel Rana',
          userReview: '5/5',
        ),
        ReviewItem(
          userImgPath: 'assets/images/cartoon.jpg',
          userName: 'Mehedi Hasan',
          userReview: '4/5',
        ),
      ];
    } else {
      reviewList = <Widget>[
        Text('No Review Available for this recipe!'),
      ];
    }
  }

  @override
  _ReviewsState createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
  @override
  Widget build(BuildContext context) {
    widget.checkRecipeNo();
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15.0, left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  onPressed: () {},
                ),
                Container(
                  width: 125.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.filter_list),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.menu),
                        color: Colors.white,
                        onPressed: () {},
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 25.0),
          Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Row(
              children: <Widget>[
                Text(
                  'Review',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0),
                ),
                SizedBox(width: 10.0),
                Text(
                  'List',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontSize: 30.0),
                )
              ],
            ),
          ),
          SizedBox(height: 40.0),
          Container(
            height: MediaQuery.of(context).size.height - 185.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(80.0)),
            ),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(left: 25.0, right: 20.0),
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 15.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return RawMaterialButton(
                          onPressed: () {},
                          child: widget.reviewList[index],
                        );
                      },
                      itemCount: widget.reviewList.length,
                    ),
                  ),
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   children: <Widget>[
                //     Container(
                //       height: 65.0,
                //       width: 60.0,
                //       decoration: BoxDecoration(
                //         border: Border.all(
                //             color: Colors.grey,
                //             style: BorderStyle.solid,
                //             width: 1.0),
                //         borderRadius: BorderRadius.circular(10.0),
                //       ),
                //       child: Center(
                //         child: Icon(Icons.search, color: Colors.black),
                //       ),
                //     ),
                //     Container(
                //       height: 65.0,
                //       width: 60.0,
                //       decoration: BoxDecoration(
                //         border: Border.all(
                //             color: Colors.grey,
                //             style: BorderStyle.solid,
                //             width: 1.0),
                //         borderRadius: BorderRadius.circular(10.0),
                //       ),
                //       child: Center(
                //         child: Icon(Icons.shopping_basket, color: Colors.black),
                //       ),
                //     ),
                //     Container(
                //       height: 65.0,
                //       width: 120.0,
                //       decoration: BoxDecoration(
                //         border: Border.all(
                //             color: Colors.grey,
                //             style: BorderStyle.solid,
                //             width: 1.0),
                //         borderRadius: BorderRadius.circular(10.0),
                //         color: Color(0xFF1C1428),
                //       ),
                //       child: Center(
                //         child: Text(
                //           'Checkout',
                //           style: TextStyle(
                //               fontFamily: 'Montserrat',
                //               color: Colors.white,
                //               fontSize: 15.0),
                //         ),
                //       ),
                //     )
                //   ],
                // )
              ],
            ),
          )
        ],
      ),
    );
  }
}
