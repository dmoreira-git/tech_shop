import 'package:flutter/material.dart';
import 'package:tech_shop/components/bottom_nav_bar.dart';
import 'cartpage.dart';
import 'settingspage.dart';
import 'shoppage.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{

  int _selectedBottomBarIndex = 0;

  void navigateBottomBar(int index){
    setState(() {
      _selectedBottomBarIndex = index;
    });
  }

  final List<Widget> _pages = [
    const ShopPage(),
    const CartPage(),
    const SettingsPage(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: StoreBottomBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedBottomBarIndex],
    );
  }

}