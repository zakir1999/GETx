import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/Packages/Route%20Navigation/second.dart';
class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Navigation",
      home: Scaffold(
        appBar: AppBar(title: Text("Navigation"),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              ElevatedButton(onPressed:  () async {
                // Get.to(
                //   second(),
                //   fullscreenDialog: true,
                //   transition: Transition.zoom,
                //   duration: Duration(milliseconds: 4000),
                //   curve: Curves.bounceInOut,
                //
                //
                // );

                // Go to home screen but no option to return to previous screen
                // Get.of()

                //Go to home screen and cancel all previous screens/routes
                //Get.offAll(Home());

                //Go to next screen with some data
                // Get.to(second(),arguments: "Data from Home");
                // go to next screen and recieve data sent from the home screen.
                var data= await Get.to(second());
                print("The Received data is $data ");



              }, child: Text("Go to Home"),
              )

            ],
          ),
        ),
      ),
    );
  }
}
