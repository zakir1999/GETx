import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:raised_buttons/raised_buttons.dart';

class dialog extends StatelessWidget {
  const dialog({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Dialog Box",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dialog Box"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.greenAccent,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)
                  ),
                ),
                onPressed: () {
                  // Get.defaultDialog();
                  Get.defaultDialog(
                    title: "Dialog Title",
                    titleStyle: TextStyle(fontSize: 25.0),
                    middleText: "This is middle text of dialog box",
                    middleTextStyle: TextStyle(fontSize: 20.0),
                    backgroundColor: Colors.grey,
                    radius: 10.0,
                    //To customize the middle text
                    content: Row(
                      children: [
                        CircularProgressIndicator(),
                        SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: Text("Data are loading"),
                        ),
                      ],
                    ),

                    //Default cancel and confirm action
                    textCancel: "Cancel",
                    cancelTextColor: Colors.white,
                    textConfirm: "Confirm",
                    confirmTextColor: Colors.white,
                    onCancel: () {
                      print("Cancel button click");
                    },

                    onConfirm: () {
                      print("Confirm button clicked");
                    },
                    buttonColor: Colors.green,
                      //Override the default cancel and confirm button
                    cancel: Text(
                      "Cancel",
                      style: TextStyle(color: Colors.white),
                    ),
                    confirm: Text("Confirm",style: TextStyle(color: Colors.white),),
                    actions: [
                      ElevatedButton(onPressed: (){
                        Get.back();
                      }, child: Text("Act-1")),
                      ElevatedButton(onPressed: (){} , child: Text("Act-2"))
                    ],
                    barrierDismissible: true,
                  );
                },
                child: Text("Dialog Show"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
