import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resume_builder/controllers/home_controller.dart';
import 'package:resume_builder/main.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Create CV", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Column(
        children: [
          shouldUseTabletView
              ? GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return Card(
                      child: GestureDetector(
                        onTap: (){},
                        child: Column(
                          children: [
                            Text(homeController.contentList[index].title),
                            const SizedBox(height: 10),
                            Icon(homeController.contentList[index].iconData),
                          ],
                        ),
                      ),
                    );
                  },
                )
              : ListView.builder(
                  shrinkWrap: true,
                  itemCount: homeController.contentList.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        onTap: () {},
                        title: Text(homeController.contentList[index].title),
                        leading: Icon(homeController.contentList[index].iconData),
                      ),
                    );
                  },
                ),
        ],
      ),
    );
  }
}
