import 'index.dart';
import 'dart:convert';
import 'dart:io';

getMarkSheets(markSheets){
  print("1: rasult for all courses");
  print("2: rasult by name");
  print("3: rasult by roll number");
  print("4: rasult by class");
   print("0: go home");
 var option = stdin.readLineSync();
  if (option == "1") {
    print("Student");
    getMarkSheetsall(markSheets);
  }
   else if (option == "2") {
    print("courses");
    getMarkSheetsByname(markSheets);
  }
   else if (option == "3") {
    print("markSheets");
    getMarkSheetsById(markSheets);
  }
   else if (option == "4") {
    print("markSheets");
    getMarkSheetsclass(markSheets);
  }
   else if (option == "0") {
    bool check = check1("0");
  if (check) { main();}
  }
   
 

}

getMarkSheetsById(markSheets) {
    print("0: go home");
  bool check = check1("0");
  if (check) { main();}
}
getMarkSheetsByname(markSheets) {
    print("0: go home");
  bool check = check1("0");
  if (check) { main();}
}
getMarkSheetsclass(markSheets) {
    print("0: go home");
  bool check = check1("0");
  if (check) { main();}
}
getMarkSheetsall(markSheets) {
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
  if (check) { main();}
 
}



