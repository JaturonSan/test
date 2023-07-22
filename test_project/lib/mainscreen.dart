import 'package:flutter/material.dart';
import 'package:test_project/screens/searchsreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedBottomNavigationIndex = 0;
  final Widget _page1 = const SearchScreen();
  final Widget _page2 = const SearchScreen();
  final Widget _page3 = const SearchScreen();
  final Widget _page4 = const SearchScreen();
  late Widget _currentPage = const SearchScreen();
  int index = 0;
  late List<Widget> _pages;

   @override
  void initState() {
    super.initState();
    _selectedBottomNavigationIndex = index;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.charging_station_rounded,
              color: Colors.blue,
            ),
            label: 'จุดชาร์จ',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.history,
              color: Colors.blue,
            ),
            label: 'ประวัติ',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.qr_code,
              color: Colors.blue,
            ),
            label: 'เริ่มชาร์จ',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.wallet,
              color: Colors.blue,
            ),
            label: 'กระเป๋าเงิน',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.blue,
            ),
            label: 'โปรไฟล์',
          ),
        ],
        // onTap: (value) {
          
        // },
        unselectedItemColor: Colors.black,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue,
      ),
      body: _currentPage,
    );
  }
}