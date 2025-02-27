import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:spotify/pages/home_page.dart';
import 'package:spotify/pages/library_page.dart';
import 'package:spotify/pages/premium_page.dart';
import 'package:spotify/pages/serach_tab.dart';

class BottomNavigation extends StatefulWidget{
  @override
  _BottomNavigationState createState()  => _BottomNavigationState();

}

class _BottomNavigationState extends State <BottomNavigation> {
  int _selectedIndex = 0;

  final List<Widget> _tabs = [
        HomePage(),
        SpotifySearchPage(),
        LibraryPage(),
        PremiumPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: IndexedStack(
        index: _selectedIndex,
        children: _tabs,
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.transparent,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Anasayfa',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Ara',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/icons/library_3297690.png"),
              ),
              label: 'Kitaplığın',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/icons/spotify_icon.png"),
                color: Colors.white,
              ),
              label: 'Spotify',
            ),
          ],
        ),
      ),
    );
  }

}