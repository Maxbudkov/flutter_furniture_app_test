import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:test_furniture_app/globalVariables/colorTheme.dart';

class InitLogin extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.lightTextColor,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 1.5,
              child: Container(
                child: Stack(
                  overflow: Overflow.visible,
                  children: [
                    Positioned(
                      top: 0,
                      left: MediaQuery.of(context).size.width / 4,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 1.75,
                        //color: Colors.blue,
                        child: Container(
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
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height / 10,
                      left: 0,
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2.5,
                        height: MediaQuery.of(context).size.height / 5,
                        color: AppTheme.subTitleTextColor,
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: MediaQuery.of(context).size.width / 3.5,
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2,
                        height: MediaQuery.of(context).size.height / 5,
                        color: AppTheme.lightTextColor,
                      ),
                    ),
                    Positioned(
                      bottom: -5,
                      child: Container(
                        padding: EdgeInsets.only(left: MediaQuery.of(context).size.width / 7),
                        width: MediaQuery.of(context).size.width,
                        child: Text(
                          "Pilih Perabotan Rumah Anda Dengan Produk Yang Berkualitas",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.width / 12,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //Expanded(child: Container()),
            Container(
              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width / 7),
              child: Text(
                "Kami hanya menjual produk berkialitas premium dan berkelas. Semua di desain oleh designer",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.width / 24,
                    height: 2
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.width / 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height / 50),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2,
                      child: RaisedButton(
                        elevation: 0,
                        highlightElevation: 0,
                        color: Colors.black38,
                          onPressed: () {

                          },
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height / 65),
                          child: Text(
                              "Login",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width / 50),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Belum punya akun? ",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: MediaQuery.of(context).size.width / 36,
                        ),
                      ),
                      InkWell (
                        onTap: () {

                        },
                          child: Text(
                            "Sign up",
                            style: TextStyle(
                              color: AppTheme.linkColor,
                              decoration: TextDecoration.underline,
                              fontSize: MediaQuery.of(context).size.width / 36,
                            ),
                          ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}