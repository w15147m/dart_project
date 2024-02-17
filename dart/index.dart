import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async {
  final student = await http.get(
    Uri.parse('http://127.0.0.1:8000/get/students'),
  );
  final courses = await http.get(
    Uri.parse('http://127.0.0.1:8000/get/courses'),
  );
print("Student");
getStudent(student);
print("courses");
getCourses(courses);
print("courses");

 
}





getStudent(student){
 if (student.statusCode == 200) {
    List<dynamic> data = json.decode(student.body);

    for (var student in data) {
      print('Student ID: ${student['id']}, Name: ${student['name']}, address: ${student['address']}, contact_number: ${student['contact_number']}');
    }
  } else {
    print('Failed to load data: ${student.statusCode}');
  }
  
}

getCourses(courses){
 if (courses.statusCode == 200) {
    List<dynamic> data = json.decode(courses.body);

    for (var courses in data) {
      print('courses name: ${courses['course_name']}, course_code: ${courses['course_code']}');
    }
  } else {
    print('Failed to load data: ${courses.statusCode}');
  }
  
}