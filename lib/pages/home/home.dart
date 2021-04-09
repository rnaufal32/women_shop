import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:women_shop/config/constant.dart';
import 'package:women_shop/pages/detail/detail.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: homeAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderHome(),
            SizedBox(
              height: padding,
            ),
            CategoryHome(),
            SizedBox(
              height: padding,
            ),
            PopulerWidget(),
            SizedBox(
              height: padding,
            ),
            PopulerItem(),
            SizedBox(
              height: padding,
            ),
            PopulerWidget(),
            SizedBox(
              height: padding,
            ),
            PopularWidth(),
            SizedBox(
              height: padding * 2,
            ),
          ],
        ),
      ),
    );
  }

  AppBar homeAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: bgColor,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset('assets/ic_menu.svg'),
          Text(
            "Women's Shops",
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.apply(color: Colors.white),
          ),
          SvgPicture.asset('assets/ic_bag.svg'),
        ],
      ),
    );
  }
}

class PopularWidth extends StatelessWidget {
  const PopularWidth({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          buildItem(
              context, size, "Pink Queen Watch", "assets/watch_2.png", 989),
          buildItem(context, size, "Pink Queen", "assets/watch_1.png", 989),
        ],
      ),
    );
  }

  Container buildItem(
      BuildContext context, Size size, String title, String asset, int price) {
    return Container(
      margin: EdgeInsets.only(
        left: padding,
        right: padding,
        bottom: padding * 2,
      ),
      padding: EdgeInsets.all(padding / 2),
      height: size.height / 6,
      width: size.width - padding,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 20),
            color: Colors.black.withOpacity(0.1),
            blurRadius: 25,
          )
        ],
      ),
      child: Row(
        children: [
          Image.asset(
            asset,
            width: size.width / 4,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 150,
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.headline6?.apply(
                        color: Colors.black,
                      ),
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: starColor,
                    size: 15,
                  ),
                  SizedBox(width: 5),
                  Text(
                    "4.5",
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
            ],
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(right: padding / 2),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: btnColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.all(padding / 6),
                  child: Icon(
                    Icons.grade,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "\$$price",
                  style: Theme.of(context).textTheme.headline6?.apply(
                        color: Colors.black,
                      ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class PopulerWidget extends StatelessWidget {
  const PopulerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: Row(
        children: [
          Text(
            "Populer",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          Text(
            "View All",
            style: TextStyle(
              color: btnColor,
              fontSize: 18,
            ),
          )
        ],
      ),
    );
  }
}

class PopulerItem extends StatelessWidget {
  const PopulerItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        buildItem(size, context, 'assets/watch_2.png', 'Pink Queen Watch', 989),
        buildItem(size, context, 'assets/watch_1.png', 'Pink Queen', 989),
      ],
    );
  }

  GestureDetector buildItem(
      Size size, BuildContext context, String asset, String title, int price) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => DetailPage()));
      },
      child: Container(
        width: size.width / 2.4,
        height: 200,
        padding: EdgeInsets.all(padding / 2),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 20),
              color: Colors.black.withOpacity(0.1),
              blurRadius: 25,
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Row(
                children: [
                  Container(
                    width: 105,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(asset)),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      decoration: BoxDecoration(
                        color: btnColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: EdgeInsets.all(padding / 6),
                      child: Icon(
                        Icons.grade,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Text(
              title,
              style: Theme.of(context).textTheme.headline6?.apply(
                    color: Colors.black,
                  ),
            ),
            Row(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: starColor,
                      size: 15,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "4.5",
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
                Spacer(),
                Text(
                  "\$$price",
                  style: Theme.of(context).textTheme.headline6?.apply(
                        color: Colors.black,
                      ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CategoryHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: padding),
        child: Row(
          children: [
            itemCategory(context, true),
            itemCategory(context, false),
            itemCategory(context, false),
            itemCategory(context, false),
          ],
        ),
      ),
    );
  }

  Container itemCategory(BuildContext context, bool active) {
    return Container(
      margin: EdgeInsets.all(padding / 2),
      height: 75,
      width: 75,
      decoration: BoxDecoration(
        color: active ? btnColor : btnColor.withOpacity(0.4),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.watch,
            color: Colors.white,
          ),
          SizedBox(height: 5),
          Text(
            "Watcher",
            style: Theme.of(context).textTheme.bodyText2?.apply(
                  color: Colors.white,
                ),
          ),
        ],
      ),
    );
  }
}

class HeaderHome extends StatelessWidget {
  const HeaderHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(
        left: padding,
        right: padding,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40),
            bottomRight: Radius.circular(40),
          ),
          color: bgColor),
      height: size.height * 0.2,
      width: size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: padding,
          ),
          RichText(
            text: TextSpan(children: [
              TextSpan(
                text: "Find your favorite \n",
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    ?.apply(color: Colors.white),
              ),
              TextSpan(
                text: "items!",
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    ?.apply(color: Colors.white),
              )
            ]),
          ),
          SizedBox(
            height: padding,
          ),
          searchHeader(),
        ],
      ),
    );
  }

  Row searchHeader() {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: padding / 2),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              children: [
                Icon(Icons.search),
                SizedBox(
                  width: padding,
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search",
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: padding / 2),
          padding: EdgeInsets.all(padding / 2),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Icon(Icons.search),
        )
      ],
    );
  }
}
