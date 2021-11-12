import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_diary/controllers/user_controller.dart';

class ChangeUsernameScreen extends StatefulWidget {
  const ChangeUsernameScreen({Key? key}) : super(key: key);

  @override
  _ChangeUsernameScreenState createState() => _ChangeUsernameScreenState();
}

class _ChangeUsernameScreenState extends State<ChangeUsernameScreen> {

  final UserController _userController = Get.find(tag: "user_controller");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (value) {
                if (value != "") {
                  _userController.changeUsename(value);
                }
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text("change_username".tr)),
          ],
        ),
      ),
    );
  }
}
