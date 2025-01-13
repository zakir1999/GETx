import 'package:flutter/material.dart';
import 'package:get/get.dart';

class showsnackbar extends StatelessWidget {
  const showsnackbar({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Snackbar",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Snackbar"),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.snackbar(
                      "Snackbar", "That's a snackbar message",
                      snackPosition: SnackPosition.BOTTOM,
                      // titleText: Text(
                      //   'SnackBar',
                      //   style: TextStyle(color: Colors.black),
                      // ),
                      // messageText: Text(
                      //   "That's a snackbar Message",
                      //   style: TextStyle(color: Colors.white),
                      // ),
                      colorText: Colors.black,
                      backgroundColor: Colors.deepOrangeAccent,
                      borderRadius: 10.0,
                      margin: EdgeInsets.all(10.0),
                      maxWidth: 300.0,
                      animationDuration: Duration(milliseconds: 3000),
                      backgroundGradient: LinearGradient(
                          colors: [Colors.orange, Colors.lightBlue]),
                      borderColor: Colors.purple,
                      borderWidth: 4,
                      boxShadows: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(30, 50),
                          spreadRadius: 20,
                          blurRadius: 8,
                        )
                      ],
                      isDismissible: true,
                      dismissDirection: DismissDirection.vertical,
                      //Dismissdirection
                      forwardAnimationCurve: Curves.bounceInOut,
                      //Bouncing Effect,
                      icon: Icon(
                        Icons.send,
                        color: Colors.white54,
                      ),
                      shouldIconPulse: false,
                      leftBarIndicatorColor: Colors.white,
                      mainButton: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.green,
                            foregroundColor: Colors.white,
                          ),
                          child: Text("Retry"),
                          onPressed: () {
                            print("Retry Clicked");
                          }),
                      overlayBlur: 5.0,
                      overlayColor: Colors.grey,
                      showProgressIndicator: true,
                      progressIndicatorBackgroundColor: Colors.blue,
                      progressIndicatorValueColor:AlwaysStoppedAnimation<Color>(Colors.white),
                      snackbarStatus: (val){
                        print(val);
                      },
                      // userInputForm: Form(  //Take input from user's, using snackbar.
                      //   child: Row(
                      //     children: [
                      //       Expanded(child: TextField())
                      //     ],
                      //   ),
                      // )
                    );
                  },
                  child: Text("SnackBar"))
            ],
          ),
        ),
      ),
    );
  }
}
