import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:task_manager_app/services/notification_services.dart';
import 'package:task_manager_app/services/theme_services.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var notifyHelper;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    notifyHelper = NotifyHelper();
    notifyHelper.requestIOSPermissions();
    notifyHelper.initializeNotification();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: _appBar(),
      body: Column(
        children: [
          Text("Theme Data",style: TextStyle(fontSize: 30),)
        ],
      ),
    );
  }

  _appBar(){
    return AppBar(
      leading: GestureDetector(

        onTap: (){

           ThemeService().switchTheme();
           notifyHelper.displayNotification(
             title:"Theme Changed",
             body:Get.isDarkMode?  "Activated Light Theme":"Activated Dark Theme"
           );
           notifyHelper.scheduledNotification();

        },
        child: Icon(Icons.nightlight_round,size: 20,),
      ),
      actions: [
       Icon(Icons.person,size: 20,),
        SizedBox(width: 20,)
      ],
    );
  }
}
