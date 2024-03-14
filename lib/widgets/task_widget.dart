import 'package:coding_test/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class TaskWidget extends StatelessWidget {
  const TaskWidget(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.onComplete,
      required this.onDelete,
      required this.onEdit});
  final String title;
  final String subTitle;
  final VoidCallback onComplete;
  final VoidCallback onDelete;
  final VoidCallback onEdit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 21.0),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 18),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              const BoxShadow(
                color: Color.fromARGB(114, 117, 117, 117),
                spreadRadius: 1,
                blurRadius: 5,
                offset: Offset(0, 5),
              ),
              BoxShadow(
                color: Colors.grey.shade300,
                offset: const Offset(-5, 0),
              ),
              BoxShadow(
                color: Colors.grey.shade300,
                offset: const Offset(5, 0),
              )
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget(
                  text: title,
                  fontSize: 13,
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(
                  height: 8,
                ),
                TextWidget(
                  text: subTitle,
                  fontSize: 10,
                )
              ],
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: onEdit,
                  child: Image.asset(
                    "images/pencil.png",
                    width: 25,
                  ),
                ),
                const SizedBox(
                  width: 26,
                ),
                GestureDetector(
                  onTap: onDelete,
                  child: Image.asset(
                    "images/trash.png",
                    width: 25,
                  ),
                ),
                const SizedBox(
                  width: 26,
                ),
                GestureDetector(
                  onTap: onComplete,
                  child: Image.asset(
                    "images/check.png",
                    width: 25,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
