import 'package:flutter/material.dart';
import 'package:flutter_basic_app/dialog/dialog_flutter.dart';

class NavigationFlutter extends StatefulWidget {
  const NavigationFlutter({super.key});

  @override
  State<NavigationFlutter> createState() => _NavigationFlutterState();
}

class _NavigationFlutterState extends State<NavigationFlutter>
    with TickerProviderStateMixin {
  int _selectedIndex = 0;
  late TabController _tabController;

  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  _onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Flutter'),
        centerTitle: true,
        bottom: TabBar(controller: _tabController, tabs: const [
          Tab(
            icon: Icon(Icons.directions_boat),
          ),
          Tab(
            icon: Icon(Icons.directions_bus),
          ),
          Tab(
            icon: Icon(Icons.directions_ferry),
          )
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        unselectedItemColor: Colors.black,
        elevation: 32,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: const TextStyle(
          height: 1.5,
          fontSize: 12,
        ),
        unselectedLabelStyle: const TextStyle(
          height: 1.5,
          fontSize: 12,
        ),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.card_travel), label: 'Cart')
        ],
        onTap: _onTapped,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
      ),
      body: TabBarView(controller: _tabController, children: const [
        Center(
          child: Text('Boat'),
        ),
        Center(
          child: Text('Bus'),
        ),
        Center(
          child: Text('Ferry'),
        )
      ]),
    );
  }
}
