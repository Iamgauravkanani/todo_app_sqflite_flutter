// ignore_for_file: must_be_immutable
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/Modules/Screens/Home_Screen/Model/DB_Model/db_model.dart';
import 'package:todo_app/Modules/Utils/Helpers/DB%20Helper/db_helper.dart';
import '../../../Utils/Constants/global.dart';

class ToDo_Screen extends StatelessWidget {
  ToDo_Screen({super.key});
  String? task;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Get.defaultDialog(
            title: "Add your To-Do here",
            content: Column(
              children: [
                TextFormField(
                  onChanged: (val) {
                    task = val;
                  },
                  controller: Global.taskController,
                  decoration: const InputDecoration(
                    hintText: "Enter todo",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () async {
                    DB_Model data = DB_Model(task: task!);
                    int? res = await DB_Helper.db_helper.insertTodo(data: data);
                    Global.taskController.clear();
                    log("==================================================");
                    log("${task}");
                    log("===================================================");
                    Get.snackbar("To-DO App", "To-Do Added at $res");
                  },
                  child: Ink(
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 0),
                          blurRadius: 5,
                          spreadRadius: 2,
                          color: Colors.grey,
                        ),
                      ],
                      color: Colors.yellow,
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 120,
                      child: const Text("Add"),
                    ),
                  ),
                )
              ],
            ),
          );
        },
        label: const Text("Add ToDo"),
        icon: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text("To-Do"),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: DB_Helper.db_helper.displayToDo(),
        builder: (ctx, snapshot) {
          return Center(
            child: Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://img.freepik.com/premium-vector/no-data-concept-illustration_86047-488.jpg?w=360"),
                    fit: BoxFit.cover),
              ),
            ),
          );
        },
      ),
    );
  }
}
