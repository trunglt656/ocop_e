import 'package:ecommerce/main_screnn/category_screen.dart';
import 'package:ecommerce/main_screnn/home.dart';
import 'package:flutter/material.dart';

class CustomerHomeScreen extends StatefulWidget {
  const CustomerHomeScreen({super.key});

  @override
  State<CustomerHomeScreen> createState() => _CustomerHomeScreenState();
}

class _CustomerHomeScreenState extends State<CustomerHomeScreen> {
  int _selectedIndex = 0;
  final List<Widget> _tabs = [
    const HomeScreen(),
    const CategoryScreen(),
    const Center(
      child: Text(
        "This is stories Screen",
      ),
    ),
    const Center(
      child: Text(
        "This is cart Screen",
      ),
    ),
    const Center(
      child: Text(
        "This is profile Screen",
      ),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _tabs[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.blue,
            currentIndex: _selectedIndex,
            selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: "Category"),
              BottomNavigationBarItem(icon: Icon(Icons.shop), label: "Stores"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart), label: "Cart"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "Profile"),
            ],
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
            }));
  }
}
