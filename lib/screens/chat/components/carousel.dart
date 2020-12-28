import 'package:flutter/material.dart';
import 'dart:async';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CarouselSlide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final List<String> image = [
      "assets/images/slider1.png",
      "assets/images/slider2.png",
    ];

    Size size = MediaQuery.of(context).size;
    return Container(
      child: Stack(
        children: [
          SizedBox(
            height: size.height * 0.4 - 27,
            child: Carousel(
              boxFit: BoxFit.cover,
              autoplay: true,
              animationCurve: Curves.fastOutSlowIn,
              animationDuration: Duration(milliseconds: 500),
              dotSize: 5.0,
              dotIncreasedColor: Color(0xFF15A4EF),
              dotBgColor: Colors.transparent,
              dotPosition: DotPosition.bottomLeft,
              // dotVerticalPadding: 15.0,
              dotHorizontalPadding: 25,
              dotSpacing: 20,
              showIndicator: true,
              indicatorBgPadding: 8.0,
              overlayShadow: false,
              overlayShadowColors: Colors.white,
              overlayShadowSize: 0.7,
              images: image.map((String url) {
                return new AssetImage(url);
              }).toList(),
            ),
          ),
          // Positioned(
          //   // top: 0,
          //   bottom: 0,
          //   right: 0,
          //   left: 0,
          //   child: Container(
          //     // width: 30,
          //     height: 40,
          //     decoration: BoxDecoration(
          //       color: Color(0XFFFFFFFF),
          //       borderRadius: BorderRadius.only(
          //           topRight: Radius.circular(100),
          //           topLeft: Radius.circular(100)),
          //     ),
          //   ),
          // ),
          Container(
            margin: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.3 / 5,
              right: MediaQuery.of(context).size.width * 0.3 / 5,
            ),
            width: MediaQuery.of(context).size.width,
            height: 200,
            decoration: BoxDecoration(
              color: Color(0xFF15A4EF),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text(
                        "Mon Solde",
                        style: TextStyle(
                            color: Color(0XFFFFFFFF),
                            fontWeight: FontWeight.w300,
                            fontSize: 20),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          "500  USD",
                          style: TextStyle(
                              color: Color(0XFFFFFFFF),
                              // fontWeight: FontWeight.w300,
                              fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          "2000 CDF",
                          style: TextStyle(
                              color: Color(0XFFFFFFFF),
                              // fontWeight: FontWeight.w300,
                              fontSize: 20),
                        ),
                      ),
                      // Positioned(
                      //   child: GestureDetector(
                      //     onTap: () {},
                      //     child: SvgPicture.asset(
                      //       'assets/icons/add.svg',
                      //       width: 30,
                      //       height: 30,
                      //       color: Color(0xFFFFFFFF),
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
