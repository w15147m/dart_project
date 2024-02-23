import 'dart:convert';
import 'dart:io';
import 'auth.dart';
import 'student.dart';
import 'courses.dart';
import 'markSheets.dart';
import 'package:http/http.dart' as http;
var x = false;
void main() async {
  final student = await http.get(
    Uri.parse('http://127.0.0.1:8080/get/students'),
  );
  final courses = await http.get(
    Uri.parse('http://127.0.0.1:8080/get/courses'),
  );
  final markSheets = await http.get(
    Uri.parse('http://127.0.0.1:8080/get/markSheets'),
  );

  print("Welcome to Student info Portal");
  if (!x) {
    String logIn = '';
    var auth = checkAuth();
    if (auth) {
      logIn = login();
    } else {
      registration();
    }
    if (logIn == 'login') {
      print("User login successful.");
      x = true;
    }
  }
  print("1: student");
  print("2: cources");
  print("3: MarkSheets");
  var option = stdin.readLineSync();
  if (option == "1") {
    print("Student");
    getStudent(student);
  }
   else if (option == "2") {
    print("courses");
    getCourses(courses);
  }
   else if (option == "3") {
    print("markSheets");
    getMarkSheets(markSheets);
  }
}
check1(req) {
  bool check = false;
  while (!check) {
    var option = stdin.readLineSync();
    if (option == req) {
      check = true;
      return true;
    } else {
      check = false;
    }
    if (!check) {
      print("Inter a valid value");
    }
  }
}
