import 'dart:convert';
import 'dart:io';
import 'auth.dart';
import 'student.dart';
import 'courses.dart';
import 'markSheets.dart';
import 'package:http/http.dart' as http;

// print('Status Code: ${markSheetById.statusCode}');
var x = true;
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
  print("3: Check Result");
  var option = stdin.readLineSync();
  if (option == "1") {
    print("Student");
    getStudent(student);
  } else if (option == "2") {
    print("courses");
    getCourses(courses);
  } else if (option == "3") {
    print("markSheets");
    print("1: rasult for all courses");
    print("2: Check Result by name");
    print("3: Check Result by roll number");
    print("4: Check Result by class");
    print("0: go home");
    var option = stdin.readLineSync();
    if (option == "1") {
      print("Student");
      getMarkSheetsall(markSheets);
    } else if (option == "2") {
      print("inter your name");
      var option = stdin.readLineSync();
      print("markSheets");
      getMarkSheetsByname(option);
    } else if (option == "3") {
      print("inter your roll number");
      var option = stdin.readLineSync();
      print("markSheets");
      getMarkSheetsById(option);
    } else if (option == "4") {
      print("markSheets");
      getMarkSheetsclass(markSheets);
    } else if (option == "0") {
      bool check = check1("0");
      if (check) {
        main();
      }
    }
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

getMarkSheets(markSheets) {}
