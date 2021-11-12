import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_diary/controllers/user_controller.dart';
import 'package:my_diary/screens/change_username_screen.dart';

class SettingsScreen extends StatelessWidget {

  SettingsScreen({Key? key}) : super(key: key);

  final UserController _userController = Get.put(UserController(), tag: "user_controller");

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 10),

          // This is an observer - reactive widget in Getx
          // automatically rebuilds when observable (username) changes.
          Obx(() => Text(_userController.username, style: Get.textTheme.headline5)),

          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.updateLocale(const Locale("ru_RU"));
                  },
                  child: const Text("RU")),
              ElevatedButton(
                  onPressed: () {
                    Get.updateLocale(const Locale("esp_ESP"));
                  },
                  child: const Text("ESP")),
              ElevatedButton(
                  onPressed: () {
                    Get.updateLocale(const Locale("en_US"));
                  },
                  child: const Text("ENG")),
            ],
          ),
          const SizedBox(height: 10),
          ElevatedButton(
              onPressed: () {
                Get.to(() => const ChangeUsernameScreen());
              },
              child: Text("change_username".tr)),
        ],
      ),
    );
  }
}
