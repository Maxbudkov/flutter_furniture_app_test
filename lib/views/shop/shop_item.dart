import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:test_furniture_app/globalVariables/colorTheme.dart';

class ShopItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [AppTheme.ultraLightTextColor, Colors.white],
            stops: [0.0, 0.5]
          )
        ),
        child: Container(
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.5,
                child: Stack(
                  children: [
                    Container(
                      child: CachedNetworkImage(
                        imageUrl: "https://www.ekbotefurniture.com/wp-content/uploads/2019/01/WOODEN-DINING-CHAIR-WITH-SPECIAL-DESIGN.jpg",
                        imageBuilder: (context, imageProvider) => Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: imageProvider,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        placeholder: (context, url) => CircularProgressIndicator(),
                        errorWidget: (context, url, error) => Icon(Icons.error),
                      ),
                    ),
                    SafeArea(
                      child: Container(
                        child: FlatButton(
                          color: AppTheme.pinColor,
                          child: Text(
                              "<",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24
                            ),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          splashColor: Colors.transparent,
                          shape: CircleBorder()
                        ),
                      )
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 30, bottom: MediaQuery.of(context).size.height / 40),
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: EdgeInsets.only(left: MediaQuery.of(context).size.width / 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          "Chair",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14
                        ),
                      ),
                      Text(
                          "Chair in White",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          height: 1.5
                        ),
                      ),
                      Text(
                          "Rp. 100.000",
                        style: TextStyle(
                            color: AppTheme.subTitleTextColor,
                            fontSize: 24,
                            height: 1.5
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            GestureDetector( onTap: () {}, child: Icon(Icons.star, color: Colors.yellow,) ),
                            GestureDetector( onTap: () {}, child: Icon(Icons.star, color: Colors.yellow,) ),
                            GestureDetector( onTap: () {}, child: Icon(Icons.star, color: Colors.yellow,) ),
                            GestureDetector( onTap: () {}, child: Icon(Icons.star, color: Colors.yellow,) ),
                            GestureDetector( onTap: () {}, child: Icon(Icons.star_border, color: Colors.black38,) ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: MediaQuery.of(context).size.width / 15, bottom: MediaQuery.of(context).size.height / 30),
                child: Text(
                    "Ipsum magna proident consequat consectetur exercilation amet sunt consequat ut reprehenderit commodo nisi. "
                    "Deserunt ea consectetur aliquip non sunt dolor incididunt in qui et amet et enim reprehenderit. "
                    "Cupidatat fugiat id incididunt velit ea deserunt.",
                  style: TextStyle(
                    color: AppTheme.lightTextColor,
                    height: 2
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: MediaQuery.of(context).size.width / 15),
                child: Row(
                  children: [
                    Text("Colors"),
                    Padding(padding: EdgeInsets.only(left: MediaQuery.of(context).size.width / 25)),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width / 50),
                      child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                          ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width / 50),
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width / 50),
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width / 50),
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(child: Container()),
              Container(
                padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height / 30, left: MediaQuery.of(context).size.width / 15, right: MediaQuery.of(context).size.width / 15),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: MediaQuery.of(context).size.height / 15,
                        child: RaisedButton(
                          onPressed: () {

                          },
                          elevation: 0,
                          splashColor: Colors.transparent,
                          color: AppTheme.subTitleTextColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width / 30)
                          ),
                          child: Container(
                            child: Icon(Icons.shopping_cart_outlined, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(left: MediaQuery.of(context).size.width / 30)),
                    Expanded(
                      flex: 3,
                      child: Container(
                        height: MediaQuery.of(context).size.height / 15,
                        child: RaisedButton(
                          onPressed: () {

                          },
                          elevation: 0,
                          splashColor: Colors.transparent,
                          color: AppTheme.subTitleTextColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width / 30)
                          ),
                          child: Container(
                            child: Text(
                                "Buy now",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}