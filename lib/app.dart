import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:itri/bindings/general_binding.dart';
import 'package:itri/utils/constants/colors.dart';
import 'package:itri/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      initialBinding: GeneralBindings(),
      home: const Scaffold(
        backgroundColor: IColors.primary, body: Center(child: CircularProgressIndicator(color: Colors.white),),
      ),
    );
  }
}
