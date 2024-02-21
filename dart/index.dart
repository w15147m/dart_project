import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;





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
  var x = false;
  if (x) {
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





checkAuth() {
  bool isAuth = false;
  var a = 0;
  while (!isAuth) {
    if (a < 1) {
      print("Do you have an account (y/n)");
    }
    var option = stdin.readLineSync();
    if (option == "y") {
      isAuth = true;
      return true;
    } else if (option == "n") {
      isAuth = true;
      return false;
    }
    if (!isAuth) {
      print("Inter a valid value");
      a++;
    }
  }
}





login() {
  List user_credentials = [
    ["email", "pas"],
    ["user2@example.com", "password2"],
    ["user3@example.com", "password3"],
    ["user5@example.com", "password5"],
  ];
  bool isLoggedIn = false;
  while (!isLoggedIn) {
    stdout.write("Enter your email: ");
    String userEmail = stdin.readLineSync()!;
    stdout.write("Enter your password: ");
    String userPassword = stdin.readLineSync()!;
    for (var i = 0; i < user_credentials.length - 1; i++) {
      if (userEmail == user_credentials[i][0] &&
          userPassword == user_credentials[i][1]) {
        isLoggedIn = true;
        return "login";
      }
    }
    if (!isLoggedIn) {
      print("Invalid credentials. Try again.");
    }
  }
}

registration() {
  login();
}





getStudent(student) {
  if (student.statusCode == 200) {
    List<dynamic> data = json.decode(student.body);

    for (var student in data) {
      print(
          'Student ID: ${student['id']}, Name: ${student['name']}, address: ${student['address']}, contact_number: ${student['contact_number']}');
    }
  } else {
    print('Failed to load data: ${student.statusCode}');
  }
  print("0: go home");
  bool check = check1("0");
  if (check) {}
  main();
}





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
  if (check) {}
  main();
}


getMarkSheets(markSheets) {
  if (markSheets.statusCode == 200) {
    List<dynamic> data = json.decode(markSheets.body);

  print("| ID | Student Name | Subject  | Marks | Created At                    |");
  print("|----|--------------|----------|-------|-------------------------------|");

  for (var markSheet in data) {
    var studentId = markSheet['student_id'];
    var studentName = markSheet['name'];

    if (markSheet['marksheets'].isEmpty) {
      print("| $studentId | $studentName   | No data  | N/A   | N/A                           |");
    } else {
      for (var marks in markSheet['marksheets']) {
        var subject = marks['subject']['subject_name'];
        var marksObtained = marks['marks'];
        var createdAtString = marks['created_at'];
        var createdAt = DateTime.parse(createdAtString);
        var formattedDate = "${createdAt.year}-${createdAt.month}-${createdAt.day}";
        print("| $studentId | $studentName   | $subject | $marksObtained | $formattedDate                |");
      }
    }
  }
  } else {
    print('Failed to load data: ${markSheets.statusCode}');
  }
  print("0: go home");
  bool check = check1("0");
  if (check) {}
  main();
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
