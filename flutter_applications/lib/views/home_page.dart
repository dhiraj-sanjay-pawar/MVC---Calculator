import 'package:flutter/material.dart';
import '../models/user.dart';
import '../controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  final HomeController controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MVC Example'),
      ),
      body: Center(
        child: StreamBuilder<User>(
          stream: controller.userStream,
          builder: (context, snapshot) {
            if (snapshot.hasData && snapshot.data != null) {
              return Text('Hello, ${snapshot.data!.name}!'); // Using ! to assert that snapshot.data is not null
            } else {
              return CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}
