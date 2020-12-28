import 'package:flutter/material.dart';
import 'dart:async';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

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
      child: Column(
        children: [
          SizedBox(
            height: size.height * 0.2 / 4,
          ),
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
              // boxShadow: [
              //   BoxShadow(
              //     // color: Colors.grey,
              //     color: Color(0xFF15A4EF).withOpacity(0.5),
              //     offset: Offset(0.0, 1.0), //(x,y)
              //     blurRadius: 6.0,
              //   ),
              // ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Container(
                        child: Column(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Mon Solde",
                              style: TextStyle(
                                  color: Color(0XFFFFFFFF),
                                  fontWeight: FontWeight.w300,
                                  fontSize: 25),
                            ),
                          ],
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          "500  USD",
                          style: TextStyle(
                              color: Color(0XFFFFFFFF),
                              fontWeight: FontWeight.w300,
                              fontSize: 30),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          "2000 CDF",
                          style: TextStyle(
                              color: Color(0XFFFFFFFF),
                              fontWeight: FontWeight.w300,
                              fontSize: 30),
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
                Container(
                  child: IconButton(
                    icon: Icon(
                      Icons.add_circle_outline,
                      color: Color(0XFFFFFFFF),
                    ),
                    iconSize: 30,
                    onPressed: () {
                      showBarModalBottomSheet(
                        context: context,
                        builder: (context) => SingleChildScrollView(
                          controller: ModalScrollController.of(context),
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 400, top: 20),
                            child: Container(
                              child: Column(
                                children: [
                                  Text("Recharger Mon compte via"),
                                  Text("M-pesa"),
                                  Text("airtel Money"),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: size.height * 0.2 / 4,
          ),
        ],
      ),
    );
  }
}
