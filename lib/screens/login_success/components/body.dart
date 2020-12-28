import 'package:flutter/material.dart';
import 'package:Smartdrc/components/default_button.dart';
import 'package:Smartdrc/size_config.dart';
import 'package:Smartdrc/screens/routestack.dart';
import 'package:lottie/lottie.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(milliseconds: 1000), () {
      Navigator.pushNamed(context, RouteStack.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 4 / 20),
        Container(
          width: SizeConfig.screenWidth,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Lottie.asset(
                'assets/images/success.json',
                height: SizeConfig.screenHeight * 0.2,
              ),
            ],
          ),
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        Text(
          "Connexion réussie",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(16),
            fontWeight: FontWeight.w100,
            // color: Colors.black,
          ),
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
          // child: DefaultButton(
          //   text: "Continuer",
          //   press: () {
          //     Navigator.pushNamed(context, RouteStack.routeName);
          //   },
          // ),
        ),
        Spacer(),
      ],
    );
  }
}

// class Body extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         SizedBox(height: SizeConfig.screenHeight * 4 / 20),
//         Container(
//           width: SizeConfig.screenWidth,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Lottie.asset(
//                 'assets/images/success.json',
//                 height: SizeConfig.screenHeight * 0.2,
//               ),
//             ],
//           ),
//         ),
//         SizedBox(height: SizeConfig.screenHeight * 0.04),
//         Text(
//           "Connexion réussie",
//           style: TextStyle(
//             fontSize: getProportionateScreenWidth(16),
//             fontWeight: FontWeight.w100,
//             // color: Colors.black,
//           ),
//         ),
//         SizedBox(height: SizeConfig.screenHeight * 0.04),
//         SizedBox(
//           width: SizeConfig.screenWidth * 0.6,
//           child: DefaultButton(
//             text: "Continuer",
//             press: () {
//               Navigator.pushNamed(context, RouteStack.routeName);
//             },
//           ),
//         ),
//         Spacer(),
//       ],
//     );
//   }
// }
