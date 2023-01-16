import 'package:get/get.dart';
import 'package:getx_test/ui/detail/detail_screen.dart';
import 'package:getx_test/ui/home/home_screen.dart';
import 'package:getx_test/ui/routes/screens.dart';

class Routes {
  static String todetailScreen() => detailScreen;
  static String homeScreen() => home;
  static List<GetPage> routes = [
    GetPage(name: detailScreen, page: () => DetailScreen()),
    GetPage(name: home, page: () => HomeScreen())
  ];
}
