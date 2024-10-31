import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ResetPasswordController extends GetxController {
  final cEmail = TextEditingController();

  @override
  void onClose() {
    cEmail.dispose();
    super.onClose();
  }
}
