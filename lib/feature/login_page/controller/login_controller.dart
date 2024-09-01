import 'package:get/get.dart';
import 'package:jungle_windows_application/api/base/network_api_call.dart';
import 'package:jungle_windows_application/feature/home_page/view/home_screen.dart';

class LoginController extends GetxController {
  final Api _api = Api.instance;
  var isLoading = false.obs;

  Future<void> login(String username, String password) async {
    if (username.isEmpty || password.isEmpty) {
      Get.snackbar("Error", "Username and password cannot be empty");
      return;
    }

    isLoading.value = true;

    try {
      final response = await _api.postRequest(
        '/auth.php?type=login&username=${username}wj&password=${password}',
      );

      if (response['status'] == 'success') {
        String apiKey = response['key'];
        Get.snackbar("Success", "Login Successful");

        // Navigate to HomeScreen
        Get.offAll(() => HomeScreen());
      } else {
        Get.snackbar("Error", response['errors'] ?? "Login failed");
      }
    } catch (e) {
      print(e);
      Get.snackbar("Error", "Failed to connect to the server");
    } finally {
      isLoading.value = false;
    }
  }
}
