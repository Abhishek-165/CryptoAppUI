import 'package:crypto/UI/charts.dart';
import 'package:crypto/UI/coin_list.dart';
import 'package:crypto/UI/home.dart';
import 'package:crypto/UI/setting.dart';
import 'package:crypto/common/colors.dart';
import 'package:flutter/material.dart';

class RootNavigator extends StatefulWidget {
  const RootNavigator({Key? key}) : super(key: key);

  @override
  _RootNavigatorState createState() => _RootNavigatorState();
}

class _RootNavigatorState extends State<RootNavigator> {
  TextStyle labelStyle() => const TextStyle(fontSize: 0);
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    CoinList(),
    Charts(),
    Settings(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: labelStyle(),
        unselectedLabelStyle: labelStyle(),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: customPrimaryColor,
        unselectedItemColor: Colors.grey,
        items: <BottomNavigationBarItem>[
          singleBottomBarItem(Icons.home),
          singleBottomBarItem(Icons.assignment),
          singleBottomBarItem(Icons.pie_chart),
          singleBottomBarItem(Icons.settings),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }

  BottomNavigationBarItem singleBottomBarItem(IconData icon) {
    return BottomNavigationBarItem(
        icon: Icon(
          icon,
          size: 24,
        ),
        label: '');
  }
}
