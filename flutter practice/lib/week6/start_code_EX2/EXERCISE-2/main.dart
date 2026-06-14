import 'package:exercise_1/week6/start_code_EX2/EXERCISE-2/data/profile_data.dart';
import 'package:flutter/material.dart';

import 'ui/screens/profile.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ProfileApp(profileData: ronanProfile,),
  ));
}
