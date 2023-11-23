import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ToDo_Screen extends StatelessWidget {
  const ToDo_Screen({super.key});

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
                  decoration: const InputDecoration(
                    hintText: "Enter todo",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {},
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
      body: Container(),
    );
  }
}
