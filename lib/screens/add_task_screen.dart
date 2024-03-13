import 'package:coding_test/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.white,
          size: 25,
        ),
        title: const TextWidget(
          text: "Add Task",
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
        centerTitle: false,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 29.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 43,
                ),
                const TextField(
                  decoration: InputDecoration(
                    hintText: "Title",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Color(0xff8B8787),
                    ),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff8B8787))),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const TextField(
                  decoration: InputDecoration(
                    hintText: "Detail",
                    hintStyle: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Color(0xff8B8787),
                    ),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff8B8787))),
                  ),
                ),
                const SizedBox(
                  height: 54,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                      backgroundColor: const MaterialStatePropertyAll(
                        Color(0xff9395D3),
                      ),
                      elevation: const MaterialStatePropertyAll(4)),
                  child: const SizedBox(
                    width: double.infinity,
                    height: 65,
                    child: Center(
                      child: TextWidget(
                        text: "ADD",
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
