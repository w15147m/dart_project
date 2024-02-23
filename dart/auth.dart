import 'dart:io';
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
