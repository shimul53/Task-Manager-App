import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:task_manager_app/services/theme_services.dart';
import 'package:task_manager_app/ui/home_page.dart';
import 'package:task_manager_app/ui/theme.dart';
import 'package:get_storage/get_storage.dart';



void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
   runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(


      title: 'Task Manager App',

      debugShowCheckedModeBanner: false,
      theme: Themes.light,
      darkTheme: Themes.dark,
      themeMode: ThemeService().theme,

      home: HomePage(),
    );
  }
}


