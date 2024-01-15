import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:openaccountsgetx/app/modules/login/login_model.dart';

class LoginController extends GetxController {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final user = User('', '');
   void login() {
    String username = usernameController.text;
    String password = passwordController.text;

    // You can add authentication logic here, e.g., check username and password

    // Update the user data using GetX controller
    updateUser(username, password);

    // For demonstration purposes, we'll just print the credentials.
    log('Username: $username');
    log('Password: $password');
  }

  void updateUser(String username, String password) {
    user.username = username;
    user.password = password;
  }
}
