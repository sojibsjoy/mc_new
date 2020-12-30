import 'package:flutter/material.dart';

class Description extends StatefulWidget {
  bool isFavorite;
  final String recipeImgPath;
  final String recipeNm;
  final String recipeDtls;
  Description({
    @required this.isFavorite,
    @required this.recipeImgPath,
    @required this.recipeNm,
    @required this.recipeDtls,
  });
  @override
  _DescriptionState createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0),
                    ),
                  ),
                  child: Hero(
                    tag: 'details',
                    child: Image.asset(
                      widget.recipeImgPath,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10.0, top: 210.0),
                    child: widget.isFavorite
                        ? CircleAvatar(
                            backgroundColor: Colors.red,
                            radius: 25.0,
                            child: Icon(
                              Icons.favorite,
                              color: Colors.white,
                              size: 30.0,
                            ),
                          )
                        : CircleAvatar(
                            backgroundColor: Colors.grey.withOpacity(0.7),
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
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 10.0),
              child: Text(
                widget.recipeNm,
                style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, top: 10.0, bottom: 10.0),
              child: Row(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.star_border,
                        color: Colors.green,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        "4.6",
                        style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.green,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        "Ratings",
                        style: TextStyle(fontSize: 14.0, color: Colors.black54),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                top: 5,
                right: 15,
                bottom: 20,
              ),
              child: Text(
                widget.recipeDtls,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
