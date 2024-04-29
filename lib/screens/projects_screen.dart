import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resume_builder/components/common_button.dart';
import 'package:resume_builder/components/common_text_field.dart';
import 'package:resume_builder/controllers/projects_details_controller.dart';

class ProjectsDetailsScreen extends StatelessWidget {
  const ProjectsDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ProjectsDetailsController projectsDetailsController = Get.put(ProjectsDetailsController());
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        title: const Text("Projects Details", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Obx(() {
                return ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: projectsDetailsController.listOfControllers.length,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Projects Details ${index + 1}", style: const TextStyle(fontSize: 16)),
                                IconButton(
                                  onPressed: () {
                                    projectsDetailsController.listOfControllers.removeAt(index);
                                  },
                                  icon: const Icon(
                                    Icons.delete,
                                  ),
                                ),
                              ],
                            ),
                            CommonTextField(
                              textEditingController: projectsDetailsController.listOfControllers[index].titleController,
                              title: "Title",
                              hintText: "Enter Title",
                            ),
                            CommonTextField(
                              textEditingController:
                                  projectsDetailsController.listOfControllers[index].descriptionController,
                              title: "Description",
                              hintText: "Description",
                            ),
                          ],
                        ),
                      );
                    });
              }),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CommonButton(
                    title: "Add",
                    onTap: () {
                      projectsDetailsController.listOfControllers.add(
                        ProjectsFieldsControllersClass(
                          titleController: TextEditingController(),
                          descriptionController: TextEditingController(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(width: 10),
                  CommonButton(
                    title: "Save",
                    onTap: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
