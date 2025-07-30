import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{
  static HomeController get  instance => Get.find<HomeController>();

  // Variable to control the carousel slider

  final carouselController = CarouselSliderController();
  RxInt currentIndex = 0.obs;

  // On Carousel Page Changed
  void onPageChanged(int index) {
    currentIndex.value = index;
  }

}