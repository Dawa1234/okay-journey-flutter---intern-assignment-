import 'package:flutter/material.dart';
import 'package:intern_assignment/repository/resultRepo.dart';
import 'package:intern_assignment/screen/pages/addUserScreen.dart';
import 'package:intern_assignment/screen/pages/allUserScreen.dart';
import 'package:intern_assignment/screen/pages/searchScreen.dart';
import 'package:intern_assignment/static/app.dart';

class PageNavigationScreen extends StatefulWidget {
  const PageNavigationScreen({Key? key}) : super(key: key);
  static const route = "/pageNavigationScreen";

  @override
  State<PageNavigationScreen> createState() => _PageNavigationScreenState();
}

class _PageNavigationScreenState extends State<PageNavigationScreen> {
  // Page Controller
  final PageController _pageController = PageController();
  // current page
  int currentPageIndex = 0;

  // List of bottom navigation items
  final List<BottomNavigationBarItem> _items = [
    const BottomNavigationBarItem(
        backgroundColor: Colors.orange, label: "Add", icon: Icon(Icons.add)),
    const BottomNavigationBarItem(
        backgroundColor: Colors.orange,
        label: "Search",
        icon: Icon(Icons.search)),
    const BottomNavigationBarItem(
        backgroundColor: Colors.orange,
        label: "Users",
        icon: Icon(Icons.person)),
  ];

  // List of page/screen
  final List<Widget> _pages = [
    const AddUserData(),
    const SearchUserData(),
    AllUserData(),
  ];

  // Get data before on when app starts
  getResults() async {
    Constant.results = await ResultRepositoryImpl().getResults();
  }

  @override
  void initState() {
    getResults();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Intern Assignment"),
      ),
      // Main page
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        scrollDirection: Axis.horizontal,
        children: _pages,
      ),
      // Bottom nav bar
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BottomNavigationBar(
          onTap: (index) {
            _pageController.animateToPage(index,
                duration: const Duration(milliseconds: 1),
                curve: Curves.bounceIn);
          },
          currentIndex: currentPageIndex,
          selectedIconTheme:
              const IconThemeData(color: Color.fromARGB(255, 255, 255, 255)),
          unselectedItemColor: Colors.grey[700],
          type: BottomNavigationBarType.shifting,
          items: _items,
        ),
      ),
    );
  }
}
