import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manager_app/ui/theme.dart';

class NotifiedPage extends StatelessWidget {
  final String? label;
  const NotifiedPage({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Get.isDarkMode?Colors.grey[600]: Colors.white,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back_ios,color:Get.isDarkMode? Colors.white:Colors.grey,),
        ),
        title: Text(this.label.toString().split("|")[0],style: TextStyle(color: Colors.black),),
      ),
      body: Center(
        child: Container(
          height:  400,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Get.isDarkMode?primaryClr:greenClr,
          ),
          child: Center(child: Column(
            children: [
              Row(
                children: [
                  Icon(Icons.subtitles,color: Colors.white,),
                  SizedBox(width: 10,),
                  Text(this.label.toString().split("|")[1],
                    style: TextStyle(color: Get.isDarkMode?Colors.black:Colors.white,fontSize: 30),),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Icon(Icons.timer,color: Colors.white,),
                  SizedBox(width: 10,),
                  Text(this.label.toString().split("|")[2],
                    style: TextStyle(color: Get.isDarkMode?Colors.black:Colors.white,fontSize: 30),),
                ],
              ),
            ],
          )),
        ),
      ),
    );
  }
}
