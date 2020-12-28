import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:Smartdrc/screens/home/home_screen.dart';
import 'package:Smartdrc/screens/chat/chat.dart';
import 'package:Smartdrc/screens/setting/setting.dart';

class RouteStack extends StatefulWidget {
  static String routeName = "/routestack";

  RouteStack({Key key, this.label}) : super(key: key);
  final String label;

  @override
  _RouteStackState createState() => _RouteStackState();
}

class _RouteStackState extends State<RouteStack> {
  int _selectedIndex = 0;
  PageController pageController = PageController();
  bool _tryAgain = false;
  bool connectState = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> _screens = [HomeScreen(), Chat(), Setting()];

  void _onItemTapped(int index) {
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: PageView(
        controller: pageController,
        onPageChanged: _onPageChanged,
        children: _screens,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: bottomNavigationBar(_selectedIndex, _onItemTapped),
    );
  }
}

Widget bottomNavigationBar(_selectedIndex, _onItemTapped) {
  return ClipRRect(
    borderRadius: BorderRadius.only(
      topRight: Radius.circular(40),
      topLeft: Radius.circular(40),
    ),
    child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xFFFFFFFF),
        selectedItemColor: Color(0xFF15A4EF),
        unselectedItemColor: Color(0xFF262F56).withOpacity(.5),
        // showSelectedLabels: false,
        // showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            title: new Text('Home',
                style: TextStyle(
                    color: _selectedIndex == 0
                        ? Color(0xFF15A4EF)
                        : Color(0xFF262F56).withOpacity(.5))),
            icon: SvgPicture.asset(
              'assets/icons/home.svg',
              height: _selectedIndex == 0 ? 20.0 : 15,
              width: _selectedIndex == 0 ? 20.0 : 15,
              color: _selectedIndex == 0
                  ? Color(0xFF15A4EF)
                  : Color(0xFF262F56).withOpacity(.5),
            ),
          ),
          BottomNavigationBarItem(
            title: new Text('Smart mobile',
                style: TextStyle(
                    color: _selectedIndex == 1
                        ? Color(0xFF15A4EF)
                        : Color(0xFF262F56).withOpacity(.5))),
            icon: Icon(Icons.mobile_friendly_outlined),
          ),
          BottomNavigationBarItem(
            title: new Text('Reglage',
                style: TextStyle(
                    color: _selectedIndex == 2
                        ? Color(0xFF15A4EF)
                        : Color(0xFF262F56).withOpacity(.5))),
            icon: Icon(Icons.settings_outlined),
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
