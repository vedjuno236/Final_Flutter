import 'package:get/get.dart';

class BusController extends GetxController {
  String stationFrom = "ຫຼວງພະບາງ";
  String station = "ໄຊຍະບູລີ";

  void setStationForm(String from) {
    stationFrom = from;
    update();
  }

  void setStation(String from) {
    station = from;
    update();
  }
}
