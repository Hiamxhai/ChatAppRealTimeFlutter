import 'package:firebase_chat/common/routes/names.dart';
import 'package:firebase_chat/pages/welcome/state.dart';
import 'package:get/get.dart';

import '../../common/store/config.dart';
import '../../common/values/storage.dart';

class WelcomeController extends GetxController {

   final state = WelcomeState();
   WelcomeController();
   changePage(int index) async {
      state.index.value = index;
   }

   handleSignIn() async {
      await ConfigStore.to.saveAlreadyOpen();
      print('Key Sigin : $STORAGE_DEVICE_FIRST_OPEN_KEY');
      Get.offAndToNamed(AppRoutes.SIGN_IN);
   }
}