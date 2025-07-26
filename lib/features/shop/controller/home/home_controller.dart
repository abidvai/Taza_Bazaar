import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();

  /// variables
  final carouselController = CarouselSliderController();
  RxInt currentIndex = 0.obs;

  void onPageChange(int index){
    currentIndex.value = index;
  }
}