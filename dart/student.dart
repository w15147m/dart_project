import 'index.dart';
import 'dart:convert';
getStudent(student) {
  if (student.statusCode == 200) {
    List<dynamic> data = json.decode(student.body);

    for (var student in data) {
      print(
          'Roll number: ${student['id']}, Name: ${student['name']}, address: ${student['address']}, contact_number: ${student['contact_number']}');
    }
  } else {
    print('Failed to load data: ${student.statusCode}');
  }
   print("0: go home");
  bool check = check1("0");
  if (check) { main();}
}