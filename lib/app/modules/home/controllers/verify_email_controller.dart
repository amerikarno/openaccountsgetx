import 'package:get/get.dart';
import 'package:openaccountsgetx/app/modules/home/verify_email_model.dart';

class VerifyEmailController extends GetxController
    with StateMixin<VerifyEmailModel> {
  final VerifyEmailModel verifyEmail;
  VerifyEmailController({required this.verifyEmail});

   String? emailErrorMessage;
}
