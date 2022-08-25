import 'package:flutter/material.dart';
import 'package:railmeeapp/screens/home_screen.dart';
import 'package:railmeeapp/screens/seats.dart';
import 'package:railmeeapp/screens/ticket.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBar();
}

class _BottomBar extends State<BottomBar> {
  int _selectedIndex=0;
  static final List<Widget> _widgetsOptions=<Widget>[
    HomeScreen(),
    const Text('Search'),
    Ticket(),
    Seats(),
    const Text('Profile'),

  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex=index;
      });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: _widgetsOptions[_selectedIndex],
      ),
      bottomNavigationBar:BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap:_onItemTapped ,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Color(0xff526488),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search),label:'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.burst_mode_sharp),label: 'Ticket'),
          BottomNavigationBarItem(icon: Icon(Icons.event_seat_sharp),label:'Seat'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label:'Profile'),

        ],

      ) ,
    );
  }
}
