import 'index.dart';
import 'dart:convert';
getCourses(courses) {
  if (courses.statusCode == 200) {
    List<dynamic> data = json.decode(courses.body);

    for (var courses in data) {
      print(
          'courses name: ${courses['course_name']}, course_code: ${courses['course_code']}');
    }
  } else {
    print('Failed to load data: ${courses.statusCode}');
  }
   print("0: go home");
  bool check = check1("0");
  if (check) { main();}
}