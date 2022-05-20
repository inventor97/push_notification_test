import 'package:get/get.dart';
import 'package:push_notification_test/pages/home/bindings/binding.dart';
import 'package:push_notification_test/pages/home/views/view.dart';

import 'AppRoutes.dart';

class AppPages {
  static final List<GetPage> routes = [
    GetPage(
      name: AppRoutes.BASE,
      page: () => HomePage(),
      binding: HomeBinding(),
    ),
  ];
}
