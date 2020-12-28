import 'package:flutter/material.dart';
import './components/dial_button.dart';

import 'components/body.dart';
import 'package:Smartdrc/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Call extends StatelessWidget {
  static String routeName = "/call";
  // int _selectedIndex = 0;
  // int _onItemTapped = 0;
  @override
  Widget build(BuildContext context) {
    final Map arguments = ModalRoute.of(context).settings.arguments as Map;
    return Scaffold(
      backgroundColor: kBackgoundColor,
      appBar: AppBar(
        backgroundColor: kBackgoundColor,
        // title: const Text('Next page'),
        automaticallyImplyLeading: false,
        // leading: IconButton(
        //     icon: SvgPicture.asset(
        //       'assets/icons/back.svg',
        //       height: 15,
        //       width: 15,
        //       color: Color(0xFFFFFFFF),
        //     ),
        //     onPressed: () {
        //       Navigator.pop(context);
        //     }),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 5,
                ),
                Text(
                  arguments['name'],
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
                    backgroundImage: AssetImage(arguments['image']),
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
                  onPressed: () {
                    Navigator.pop(context);
                  },
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
      ),
      // bottomNavigationBar: bottomNavigationBar(),
    );
  }
}

Widget bottomNavigationBar() {
  return ClipRRect(
    borderRadius: BorderRadius.circular(40),
    child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        // backgroundColor: Color(0xFFFFFFFF),
        // selectedItemColor: Color(0xFF262F56),
        unselectedItemColor: Color(0xFF262F56).withOpacity(.5),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 10,
        // currentIndex: _selectedIndex,
        // onTap: _onItemTapped,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            title: new Text('Home', style: TextStyle(color: Color(0xFF262F56))),
            // icon: SvgPicture.asset(
            //   'assets/icons/home.svg',
            //   height: _selectedIndex == 0 ? 20.0 : 15,
            //   width: _selectedIndex == 0 ? 20.0 : 15,
            //   color: _selectedIndex == 0
            //       ? Color(0xFF262F56)
            //       : Color(0xFF262F56).withOpacity(.5),
            // ),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            title:
                new Text('Profil', style: TextStyle(color: Color(0xFF262F56))),
            icon: Icon(Icons.monetization_on),
          ),
          BottomNavigationBarItem(
            title: new Text('Recherche',
                style: TextStyle(color: Color(0xFF262F56))),
            icon: Icon(Icons.settings),
          ),
          // BottomNavigationBarItem(
          //   title:
          //       new Text('Favoris', style: TextStyle(color: Color(0xFF262F56))),
          //   icon: SvgPicture.asset(
          //     'assets/icons/heart-icon.svg',
          //     height: _selectedIndex == 3 ? 20.0 : 15,
          //     width: _selectedIndex == 3 ? 20.0 : 15,
          //     color: _selectedIndex == 3
          //         ? Color(0xFF262F56)
          //         : Color(0xFF262F56).withOpacity(.5),
          //   ),
          // ),
        ]),
  );
}
