import 'package:flutter/material.dart';

class ReviewItem extends StatelessWidget {
  final String userImgPath;
  final String userName;
  final String userReview;

  ReviewItem({
    @required this.userImgPath,
    @required this.userName,
    @required this.userReview,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
      child: InkWell(
        // onTap: () {
        //   Navigator.of(context).push(MaterialPageRoute(
        //       builder: (context) => DetailsPage(
        //           heroTag: imgPath, foodName: foodName, foodPrice: price)));
        // },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Row(
                children: [
                  Hero(
                    tag: userImgPath,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(userImgPath),
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        userName,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        userReview,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 15.0,
                            color: Colors.grey),
                      )
                    ],
                  )
                ],
              ),
            ),
            IconButton(
              icon: Icon(Icons.add),
              color: Colors.black,
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
