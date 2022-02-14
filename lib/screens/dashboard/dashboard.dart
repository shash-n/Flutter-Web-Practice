import 'package:flutter/material.dart';

import './home.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;

  final screens = const [
    HomePage(),
    // Vendors(),
    // Lists(),
    // Categories(),
    // More(),
    // PaymentMethods(),
    // Addresses(),
    // Password(),
    // Household(),
    // UserInfo(),
    // ContactUs(),
    // TermsAndConditions(),
    // FAQ(),
    // AboutTheApp(),
    // Logout(),
  ];

  final titles = [
    "Home",
    // "Vendors",
    // "Your Shopping Lists",
    // "Categories",
    // "More",
    // "Payment Methods",
    // "Addresses",
    // "Password",
    // "Household",
    // "User info",
    // "Contact Us",
    // "Terms & Conditions",
    // "FAQ",
    // "About the App",
    // "Logout",
  ];

  void updateScreenIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: screens[_selectedIndex]);
  }
}
