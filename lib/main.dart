import 'package:flutter/material.dart';
import 'package:flutter_application_1/size_transition.dart';
import 'package:flutter_application_1/pages/third.dart';
import 'package:get/get.dart';

import 'bindings.dart';
import 'pages/first.dart';
import 'pages/second.dart';
import 'translation.dart';

void main() {
  runApp(GetMaterialApp(
    // It is not mandatory to use named routes, but dynamic urls are interesting.
    initialRoute: '/home',
    defaultTransition: Transition.native,
    translations: MyTranslations(),
    locale: Locale('pt', 'BR'),
    getPages: [
      //Simple GetPage
      GetPage(name: '/home', page: () => First()),
      // GetPage with custom transitions and bindings
      GetPage(
        name: '/second',
        page: () => Second(),
        customTransition: SizeTransitions(),
        binding: SampleBind(),
      ),
      // GetPage with default transitions
      GetPage(
        name: '/third',
        transition: Transition.leftToRight,
        page: () => Third(),
      ),
    ],
  ));
}




