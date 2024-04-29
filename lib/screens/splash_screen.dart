import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resume_builder/screens/home_screen.dart';
import 'package:resume_builder/sqf_helper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void navigateToHomePage() async {
    try{
      await DataBaseManager.init();
    }
    catch(_){

    }

    await Future.delayed(const Duration(seconds: 4));
    Get.off(()=>const HomeScreen());
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigateToHomePage();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("CV Maker", style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
