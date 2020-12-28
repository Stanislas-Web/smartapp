import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenWidth(200),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          getProportionateScreenWidth(23),
        ),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/rico.png'),
            radius: getProportionateScreenWidth(23),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              "Rico MATONDO",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: getProportionateScreenWidth(15),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
