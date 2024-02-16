import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async {
  final response = await http.get(
    Uri.parse('https://your-laravel-backend/api/students'),
  );

  if (response.statusCode == 200) {
    List<dynamic> data = json.decode(response.body);

    for (var student in data) {
      print('Student ID: ${student['id']}, Name: ${student['name']}');
    }
  } else {
    print('Failed to load data: ${response.statusCode}');
  }
}
