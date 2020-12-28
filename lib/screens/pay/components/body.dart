import 'package:flutter/material.dart';
import 'package:Smartdrc/components/headerWallet.dart';

import '../../../size_config.dart';
import 'categories.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // CarouselSlide(),
          HeaderWallet(),
          Categories(),
          SizedBox(height: getProportionateScreenWidth(30)),
        ],
      ),
    );
  }
}
