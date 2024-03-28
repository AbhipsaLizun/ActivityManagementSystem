import 'package:activity_management_system/routes/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
 // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
    WidgetsFlutterBinding.ensureInitialized();
  //FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
    // FlutterNativeSplash.remove();

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(  
        //splashFactory: NoSplash.splashFactory,
         //splashColor: Colors.blue//,
       // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        
      ),
      getPages: getPages,
      initialRoute: '/',
     // home: const LoginPage(),
    );
  }
}
