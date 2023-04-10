import 'package:butterscotch_new/screens/exercises_screen.dart';
import 'package:butterscotch_new/screens/unavailable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../models/exercise.dart';
import '../models/set.dart';
import '../models/workout.dart';
import 'home_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
    // _db.duplicateRoutine();
  }

  List<Workout> dummyWorkouts = [
    Workout(
      id: '1',
      date: DateTime(2021, 10, 10),
      exercises: [
        Exercise(
          id: '1',
          name: 'Push-ups',
          description: 'A classic exercise for building upper body strength.',
          imageUrl:
              '<https://www.verywellfit.com/thmb/9B1oxgF1cZuBjR4-7VzEqQh3HbI=/768x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/GettyImages-1055852926-5c0b0c9ac9e77c0001fa0802.jpg>',
        ),
        Exercise(
          id: '2',
          name: 'Squats',
          description:
              'A compound exercise that targets multiple muscle groups.',
          imageUrl:
              '<https://cdn1.coachmag.co.uk/sites/coachmag/files/styles/insert_main_wide_image/public/2018/06/squat.jpg?itok=6-EwJv67>',
        ),
      ],
      sets: [
        [
          ButterScotchSet(id: '1', reps: 10, weight: 50, pr: false),
        ]
      ],
    ),
    Workout(
      id: '2',
      date: DateTime(2021, 10, 9),
      exercises: [
        Exercise(
          id: '1',
          name: 'Bench Press',
          description: 'A classic exercise for building upper body strength.',
          imageUrl:
              '<https://cdn.shopify.com/s/files/1/1903/7275/articles/Bench_Press_Banner_1024x1024.png?v=1595368958>',
        ),
        Exercise(
          id: '2',
          name: 'Deadlift',
          description:
              'A compound exercise that targets multiple muscle groups.',
          imageUrl:
              '<https://cdn.muscleandstrength.com/sites/default/files/field/image/deadlift.jpg>',
        ),
      ],
      sets: [
        [
          ButterScotchSet(id: '1', reps: 10, weight: 50, pr: false),
        ]
      ],
    ),
  ];

  @override
  void dispose() {
    super.dispose();
  }

  void _tempPage() => Navigator.pushReplacement(
      context,
      MaterialPageRoute<void>(
          builder: (BuildContext context) => UnderConstructionScreen()));

  // Future<void> _pullData() async {
  //   Provider.of<PersonalData>(context, listen: false).fetchBodyfat();
  //   Provider.of<PersonalData>(context, listen: false).fetchHeight();
  //   Provider.of<PersonalData>(context, listen: false).fetchWeight();
  //   Provider.of<PersonalData>(context, listen: false).fetchGoals();
  //   Provider.of<PersonalData>(context, listen: false).fetchAchievements();

  //   Provider.of<PersonalData>(context, listen: false).fetchPartnerData();
  //   Provider.of<PersonalData>(context, listen: false).fetchPartnerAvatar();
  //   Provider.of<PersonalData>(context, listen: false).fetchUserAvatar();
  //   Provider.of<PersonalData>(context, listen: false).fetchUserData();
  //   Provider.of<DaysWorkout>(context, listen: false)
  //       .loadWorkoutData(DateFormat('EEEE').format(DateTime.now()));
  //   await Provider.of<DaysWorkout>(context, listen: false)
  //       .fetchWorkoutData(DateFormat('EEEE').format(DateTime.now()));

  //   Provider.of<ExerciseLibrary>(context, listen: false).fetcExercises();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(builder: (context, constraint) {
        print(constraint.maxHeight);
        print(constraint.maxWidth);
        if (constraint.maxHeight > 1024 || constraint.maxWidth > 600) {
          return Center(child: Text("Please open on a mobile device"));
        }
        return getBody();
      }),
    );
  }

  Widget getBody() {
    Size _size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Image.asset(
              "assets/images/us.jpg",
              height: _size.height / 2.5,
            ),
            SizedBox(height: _size.height / 7),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () async {
                    _tempPage();
                    // EasyLoading.show(status: "Signing in");
                    // await _db
                    //     .signIn("maameefuadadzie@icloud.com", "maame1234")
                    //     .then((response) async {
                    //   if (response.isEmpty) {
                    //     await _pullData();
                    //     EasyLoading.dismiss();
                    //     EasyLoading.showSuccess("Success",
                    //         duration: Duration(seconds: 1));

                    //     Navigator.pushReplacement(
                    //       context,
                    //       MaterialPageRoute<void>(
                    //         builder: (BuildContext context) => const Menu(),
                    //       ),
                    //     );
                    //   } else {
                    //     EasyLoading.dismiss();
                    //     EasyLoading.showError(response,
                    //         duration: Duration(seconds: 1));
                    //   }
                    // });
                  },
                  child: Image.asset(
                    "assets/images/efua.png",
                    height: _size.height / 7,
                  ),
                ),
                SizedBox(
                  child: VerticalDivider(
                    color: Colors.black.withOpacity(0.5),
                  ),
                  height: _size.height / 5,
                ),
                InkWell(
                    onTap: () async {
                      _tempPage();
                      // EasyLoading.show(status: "Signing in");
                      // await _db
                      //     .signIn("allenjanney@icloud.com", "Abelebaa1997?")
                      //     .then((response) async {
                      //   if (response.isEmpty) {
                      //     await _pullData();
                      //     EasyLoading.dismiss();
                      //     EasyLoading.showSuccess("Success",
                      //         duration: Duration(seconds: 1));

                      //     Navigator.pushReplacement(
                      //       context,
                      //       MaterialPageRoute<void>(
                      //         builder: (BuildContext context) => const Menu(),
                      //       ),
                      //     );
                      //   } else {
                      //     EasyLoading.dismiss();
                      //     EasyLoading.showError(response,
                      //         duration: Duration(seconds: 1));
                      //   }
                      // });
                    },
                    child: Image.asset(
                      "assets/images/allen.png",
                      height: _size.height / 7,
                    )),
              ],
            ),
            SizedBox(height: _size.height / 8),
            Text("Tap to sign in")
          ],
        ),
      ),
    );
  }
}
