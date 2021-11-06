import 'package:flutter/material.dart';
import 'package:workout/controller/workoutController/workout_controller.dart';
import 'package:workout/view/Screens/profile/profile_screen.dart';
import 'package:workout/view/Styles/Colors/colors.dart';
import 'package:workout/view/Styles/text_styles.dart';
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
      backgroundColor: dark_theme,
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
        backgroundColor: dark_theme,
        selectedItemColor: textColorFire,
        unselectedItemColor: textColorDark,
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

class WorkoutHelperScreen extends StatefulWidget {
  const WorkoutHelperScreen({Key? key}) : super(key: key);

  @override
  _WorkoutHelperScreen createState() => _WorkoutHelperScreen();
}

class _WorkoutHelperScreen extends State<WorkoutHelperScreen> {
  late Future<List<WorkoutCard>> workouts;

  final WorkoutController _controller = new WorkoutController();
  @override
  void initState() {
    super.initState();
    workouts = _controller.fetchWorkoutCards();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.fromLTRB(5, 80, 5, 0),
            child: ProfileNameCircle(name: 'Noah'),
          ),
          Expanded(
            child: SizedBox(
              height: 20.0,
              child: FutureBuilder<List<WorkoutCard>>(
                  future: workouts,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      List<WorkoutCard> list = snapshot.data ?? [];
                      return ListView.builder(
                        itemCount: list.length,
                        itemBuilder: (context, index) {
                          return list[index];
                        },
                      );
                    } else if (snapshot.hasError) {
                      return const Padding(
                          padding: EdgeInsets.fromLTRB(20, 200, 20, 0),
                          child: Text("Sorry, our server is having problems...",
                              style: TextStyle(
                                fontSize: 30,
                                color: textColorFire,
                              )));
                    }
                    return const CircularProgressIndicator();
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
