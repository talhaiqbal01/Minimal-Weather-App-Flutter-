import 'package:get/get.dart';
import '../../../features/weather/screens/home_screen/home_screen.dart';


/// Repository related to local-storage related functions
class LocalRepository extends GetxController {
  static LocalRepository get instance => Get.find();

  /*------------------------------------Variables------------------------------------*/

  /*------------------------------------ On Ready ------------------------------------*/

  @override
  void onReady() {
    setUserScreen();
  }

  /*------------------------------------ Functions ------------------------------------*/

  /// Function to set user screen on the basis of their status
  void setUserScreen() => Get.offAll(() => const HomeScreen());

}