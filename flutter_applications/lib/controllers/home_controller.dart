import 'dart:async';
import '../models/user.dart';

class HomeController {
  // Simulating data retrieval with a delay
  Future<User> getUser() async {
    await Future.delayed(Duration(seconds: 2)); // Simulating network delay
    return User('John Doe');
  }

  // Stream for user data
  StreamController<User> _userController = StreamController<User>();
  Stream<User> get userStream => _userController.stream;

  // Constructor
  HomeController() {
    // Load user data
    getUser().then((user) {
      _userController.add(user);
    });
  }
}
