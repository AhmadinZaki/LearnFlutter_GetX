import "package:get/get.dart";
import 'package:learn_flutter_getx/models/model_orang.dart';

import '../models/model_orang.dart';

class OrangController extends GetxController {
  var orang = Orang();

  void changeUpperCase() {
    orang.nama.value = orang.nama.value.toUpperCase();
  }
}
