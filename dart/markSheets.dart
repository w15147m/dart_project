import 'index.dart';
import 'calculat.dart';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

getMarkSheetsclass(markSheets) {
  print("0: go home");
  bool check = check1("0");
  if (check) {
    main();
  }
}

getMarkSheetsByname(option) async {
  final String name = option;
  final markSheetById = await http.get(
    Uri.parse('http://127.0.0.1:8080/get/markSheet/by/$name'),
  );
  if (markSheetById.statusCode == 200) {
    List data = json.decode(markSheetById.body);
    String name = data[0]['name'];
    var rollNum = data[0]['id'];
    String cource = data[0]['enrollments'][0]['course']['course_name'];
    String subject = data[0]['marksheets'][0]['subject']['subject_name'];
    var marks = data[0]['marksheets'][0]['marks'];
    String subject1 = data[0]['marksheets'][1]['subject']['subject_name'];
    var marks1 = data[0]['marksheets'][1]['marks'];
    var MarksObtained = marks + marks1;
    print("###################################################");
    print("#");
    print("#  name : $name                                   ");
    print("#  cource : $cource                                   ");
    print("#  Roll Number : $rollNum                         ");
    print("#   subject  Marks Obtained    Total Marks       ");
    print("#   $subject    $marks             100           ");
    print("#   $subject1        $marks1            100             ");

    print("Marks Obtained:  ${MarksObtained} out of 200");
    print("Percentage :  ${calculatePercentage(MarksObtained, 200)}");
    print("#");
    print("###################################################");
  }
  print("0: go home");
  bool check = check1("0");
  if (check) {
    main();
  }
}

getMarkSheetsById(option) async {
  final int id = int.parse(option);
  final markSheetById = await http.get(
    Uri.parse('http://127.0.0.1:8080/get/markSheet/by/$id'),
  );
  if (markSheetById.statusCode == 200) {
    Map<String, dynamic> data = json.decode(markSheetById.body);

    String name = data['name'];
    var rollNum = data['id'];
    String cource = data['enrollments'][0]['course']['course_name'];
    String subject = data['marksheets'][0]['subject']['subject_name'];
    var marks = data['marksheets'][0]['marks'];
    String subject1 = data['marksheets'][1]['subject']['subject_name'];
    var marks1 = data[0]['marksheets'][1]['marks'];
    var MarksObtained = marks + marks1;
    print("###################################################");
    print("#");
    print("#  name : $name                                   ");
    print("#  cource : $cource                                   ");
    print("#  Roll Number : $rollNum                         ");
    print("#   subject  Marks Obtained    Total Marks       ");
    print("#   $subject    $marks             100           ");
    print("#   $subject1        $marks1            100             ");
    print("#   Marks Obtained:  ${MarksObtained} out of 200");
    print("#   Percentage :  ${calculatePercentage(MarksObtained, 200)}");
    print("#");
    print("###################################################");
  }
  print("0: go home");
  bool check = check1("0");
  if (check) {
    main();
  }
}
getMarkSheetsall(markSheets) {
  if (markSheets.statusCode == 200) {
    List<dynamic> data = json.decode(markSheets.body);

    print(
        "| ID | Student Name | Subject  | Marks | Created At                    |");
    print(
        "|----|--------------|----------|-------|-------------------------------|");

    for (var markSheet in data) {
      var studentId = markSheet['id'];
      var studentName = markSheet['name'];
      if (markSheet['marksheets'].isEmpty) {
        print(
            "| $studentId | $studentName   | No data  | N/A   | N/A                           |");
      } else {
        for (var marks in markSheet['marksheets']) {
          var subject = marks['subject']['subject_name'];
          var marksObtained = marks['marks'];
          var createdAtString = marks['created_at'];
          var createdAt = DateTime.parse(createdAtString);
          var formattedDate =
              "${createdAt.year}-${createdAt.month}-${createdAt.day}";
          print(
              "| $studentId | $studentName   | $subject | $marksObtained | $formattedDate                |");
        }
      }
    }
  } else {
    print('Failed to load data: ${markSheets.statusCode}');
  }
  print("0: go home");
  bool check = check1("0");
  if (check) {
    main();
  }
}
