import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:workout/view/Screens/profile/profile_screen.dart';
import 'package:workout/view/widgets/nav_bar.dart';
import 'package:workout/view/widgets/profile_name_row.dart';
import 'package:workout/view/widgets/workout_card.dart';

class WorkoutScreen extends StatefulWidget {
  const WorkoutScreen({Key? key}) : super(key: key);

  @override
  _WorkoutScreen createState() => _WorkoutScreen();
}

class _WorkoutScreen extends State<WorkoutScreen> {
  final List<Widget> _screens = [
    const WorkoutHelperScreen(), 
    const ProfileScreen(),
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      backgroundColor: Colors.white,
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_run),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: '',
          ),
        ],
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

class WorkoutHelperScreen extends StatelessWidget {
  const WorkoutHelperScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const ProfileNameCircle(name: 'Noah'),
          Expanded(
            child: SizedBox(
              height: 200.0,
              child: ListView.builder(
                itemCount: workouts.length,
                itemBuilder: (BuildContext context, int index) {
                  return workouts[index];
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
