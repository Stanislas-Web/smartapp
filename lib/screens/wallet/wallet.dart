import 'package:flutter/material.dart';

import 'components/body.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Wallet extends StatelessWidget {
  static String routeName = "/wallet";
  // int _selectedIndex = 0;
  // int _onItemTapped = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        leading: IconButton(
            icon: SvgPicture.asset(
              'assets/icons/back.svg',
              height: 15,
              width: 15,
              color: Color(0xFF8f8d8d),
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        // title: const Text('Next page'),
        // automaticallyImplyLeading: false,
      ),
      body: Body(),
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
