import 'package:flutter/material.dart';
import 'package:flutterapp/config/config.dart';
import 'package:flutterapp/res/app_strings.dart';

import 'widgets/dashboard_widgets.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _currentIndex;
  @override
  void initState() {
    super.initState();
    _currentIndex = 0;
  }

  List<Widget> _children = [
    HomeView(),
    ProfileView(),
    InsightsView(),
    NotificationsView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildAppBar() {
    return AppBar(
      leading: Icon(Icons.arrow_back),
      title: Text(
        AppStrings.details,
        style: Theme.of(context)
            .textTheme
            .subtitle1
            .copyWith(color: AppTheme.white),
      ),
      centerTitle: true,
      actions: [Icon(Icons.menu)],
    );
  }

  Widget _buildBody() {
    return _children[_currentIndex];
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      fixedColor: Colors.black,
      unselectedItemColor: Colors.black,
      currentIndex: 0,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: AppStrings.home,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle_rounded),
          label: AppStrings.profile,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.bar_chart),
          label: AppStrings.inSights,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: AppStrings.notifications,
        )
      ],
      onTap: _onTabTapped,
    );
  }

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
