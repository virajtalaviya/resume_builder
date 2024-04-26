import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resume_builder/controllers/home_controller.dart';
import 'package:resume_builder/main.dart';
import 'package:resume_builder/screens/cv_view.dart';

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
        actions: [
          shouldUseTabletView
              ? TextButton(
                  onPressed: () {
                    Get.to(const CVView());
                  },
                  child: const Text(
                    "View CV",
                  ),
                )
              : const SizedBox(),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
        child: Column(
          children: [
            shouldUseTabletView
                ? const SizedBox()
                : ElevatedButton(
                    onPressed: () {
                      Get.to(const CVView());
                    },
                    style: ButtonStyle(
                        fixedSize: MaterialStateProperty.all(
                          Size(
                            MediaQuery.of(context).size.width * 0.98,
                            60,
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all(Colors.blue),
                        shape:
                            MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))),
                    child: const Text(
                      "View CV",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
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
                          onTap: () {
                            homeController.tapEventOfCard(index);
                          },
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
                          onTap: () {
                            homeController.tapEventOfCard(index);
                          },
                          title: Text(homeController.contentList[index].title),
                          leading: Icon(homeController.contentList[index].iconData),
                        ),
                      );
                    },
                  ),
          ],
        ),
      ),
    );
  }
}
