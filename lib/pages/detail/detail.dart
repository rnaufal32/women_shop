import 'package:flutter/material.dart';
import 'package:women_shop/config/constant.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppBar(),
      body: ListView(
        padding: EdgeInsets.only(
          bottom: padding * 2,
        ),
        children: [
          Container(
            padding: EdgeInsets.only(bottom: padding * 2),
            width: size.width,
            height: size.height / 3,
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Image.asset(
              'assets/watch_1.png',
              width: size.width,
              fit: BoxFit.contain,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: padding * 2,
              horizontal: padding,
            ),
            child: Row(
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Pink Queen Watch\n\n",
                        style: Theme.of(context).textTheme.headline5.apply(
                              color: Colors.black,
                            ),
                      ),
                      TextSpan(
                          text: "For women",
                          style: Theme.of(context).textTheme.bodyText2),
                    ],
                  ),
                ),
                Spacer(),
                Text(
                  "\$989",
                  style: Theme.of(context).textTheme.headline6.apply(
                        color: Colors.black,
                      ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(padding),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                      text: "About \n",
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .apply(color: Colors.black)),
                  TextSpan(
                    text:
                        "Occaecat qui sit quis labore reprehenderit nulla. Amet pariatur voluptate laboris ipsum veniam exercitation est do duis quis laborum reprehenderit aute.",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(padding),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(padding / 4),
                  margin: EdgeInsets.only(right: padding / 2),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 20),
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 25,
                      )
                    ],
                  ),
                  child: Icon(
                    Icons.add,
                    color: Colors.red,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(padding / 4),
                  margin: EdgeInsets.all(padding / 2),
                  alignment: Alignment.center,
                  child: Text("2"),
                ),
                Container(
                  padding: EdgeInsets.all(padding / 4),
                  margin: EdgeInsets.only(
                    left: padding / 2,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 20),
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 25,
                      )
                    ],
                  ),
                  child: Icon(
                    Icons.remove,
                    color: Colors.red,
                  ),
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: padding / 2,
                    horizontal: padding * 2,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    "Add to cart".toUpperCase(),
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: bgColor,
    );
  }
}
