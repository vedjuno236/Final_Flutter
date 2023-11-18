import 'package:get/get.dart';

class BusController extends GetxController {
  String stationFrom = "";

  void setStationForm(String from) {
    stationFrom = from;
    update();
  }
}
