import 'package:flutter/material.dart';
import 'dial_button.dart';
import 'rounded_button.dart';
import '../../../constants.dart';

import '../../../size_config.dart';
import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'popular_product.dart';
import 'special_offers.dart';
import './carousel.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 5,
              ),
              Text(
                "Anna williams",
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(color: Colors.white),
              ),
              Text(
                "Calling…",
                style: TextStyle(color: Colors.white60),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage("assets/images/rico.png"),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Wrap(
                alignment: WrapAlignment.spaceBetween,
                children: [
                  DialButton(
                    iconSrc: "assets/icons/Icon Mic.svg",
                    text: "Audio",
                    press: () {},
                  ),
                  DialButton(
                    iconSrc: "assets/icons/Icon Volume.svg",
                    text: "Microphone",
                    press: () {},
                  ),
                  DialButton(
                    iconSrc: "assets/icons/Icon Video.svg",
                    text: "Video",
                    press: () {},
                  ),
                  DialButton(
                    iconSrc: "assets/icons/Icon Message.svg",
                    text: "Message",
                    press: () {},
                  ),
                  DialButton(
                    iconSrc: "assets/icons/Icon User.svg",
                    text: "Add contact",
                    press: () {},
                  ),
                  DialButton(
                    iconSrc: "assets/icons/Icon Voicemail.svg",
                    text: "Voice mail",
                    press: () {},
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),

              IconButton(
                icon: Icon(Icons.call_end_outlined),
                color: kRedColor,
                tooltip: 'Increase volume by 10',
                onPressed: () {},
              ),

              // RoundedButton(
              //   iconSrc: "assets/icons/call_end.svg",
              //   press: () {},
              //   color: kRedColor,
              //   iconColor: Colors.white,
              // ),

              // CarouselSlide(),
              // Categories(),
              // SizedBox(height: getProportionateScreenWidth(30)),
            ],
          ),
        ),
      ),
    );
  }
}
