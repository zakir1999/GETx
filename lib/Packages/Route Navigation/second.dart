import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gap/gap.dart';

class second extends StatelessWidget {
  const second({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Second page"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "This is second page",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 10.0,
                    // fontWeight: FontWeight.bold
                  ),
              ),
              Gap(20.0),
              ElevatedButton(
                onPressed: () {},
                child: Text("Next Screen"),
              ),
              Gap(20.0),
              ElevatedButton(
                onPressed: () {
                  // Get.back();
                  Get.back(result: 'This is from Second Screen');
                },
                child: Text(
                  "Back to Main",
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              Gap(20.0),
              // Text("${Get.arguments}",style: TextStyle(color:Colors.green,fontSize: 20),)
            ],
          ),
        ),

    );
  }
}
