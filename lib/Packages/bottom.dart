import 'package:flutter/material.dart';
import 'package:get/get.dart';

class bottomsheet extends StatelessWidget {
  const bottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title:"Bottom Sheet",
      home: Scaffold(
        appBar: AppBar(title: Text("Bottom sheet"),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                Get.bottomSheet(
                  Container(
                    child: Wrap(
                      children: <Widget>[
                        ListTile(
                          leading: Icon(Icons.wb_sunny_outlined),
                          title:Text("Light Theme"),
                          onTap: ()=>{
                            Get.changeTheme(ThemeData.light()),
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.wb_sunny),
                          title:Text("Dark Theme"),
                          onTap: ()=>{
                            Get.changeTheme(ThemeData.dark()),
                          },
                        )
                      ],
                    ),
                  ),
                  barrierColor: Colors.grey,
                  backgroundColor: Colors.purple,
                  // isDismissible: false,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(
                      color: Colors.grey.shade400,
                      style: BorderStyle.solid,
                      width: 2.0,
                    ),
                  ),
                  enableDrag: false,

                );

              }, child: Text("Bttom Sheet"))
            ],
          ),
        ),
      ),
    );
  }
}
