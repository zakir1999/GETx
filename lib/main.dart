import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/app/modules/product/controllers/cart_controller.dart';

import 'app/routes/app_pages.dart';

void main() {
  Get.put(CartController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Product App',
      initialRoute: Routes.PRODUCT,
      getPages: AppPages.routes,
    );
  }
}
