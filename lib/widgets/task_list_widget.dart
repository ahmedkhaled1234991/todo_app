import 'package:flutter/material.dart';
import 'package:todo_app/screens/edit_text_screen.dart';

import '../utils/color_manager.dart';

class TaskListWidget extends StatelessWidget {
  bool isSelected;

  TaskListWidget({super.key, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Container(
        width: 382,
        height: 91,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          border: Border.all(
            color: ColorManager.grayBorderColor,
            width: 1,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.15),
              blurRadius: 4,
              offset: const Offset(4, 4),
            ),
          ],
        ),
        child: Center(
          child: ListTile(
            leading: Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                color: isSelected ? Colors.green : Colors.white,
                shape: BoxShape.circle,
                border: Border.all(
                  color: isSelected ? Colors.teal : ColorManager.darkBlueColor,
                  width: 2,
                ),
              ),
              child: isSelected
                  ? const Center(
                      child: Icon(
                        Icons.check,
                        color: Colors.teal,
                      ),
                    )
                  : const SizedBox.shrink(),
            ),
            title: isSelected
                ? const Text(
                    "Training at the Gym",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: ColorManager.darkBlueColor,
                    ),
                  )
                : const Text(
                    "Training at the Gym",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                      decoration: TextDecoration.lineThrough,
                      decorationColor: Colors.grey,
                    ),
                  ),
            trailing: OutlinedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return EditTaskScreen();
                }));
              },
              style: OutlinedButton.styleFrom(
                fixedSize: const Size(51, 45),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                side: const BorderSide(
                  color: ColorManager.darkBlueColor,
                  width: 1,
                ),
                padding: EdgeInsets.zero,
              ),
              child: const Text(
                "Edit",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: ColorManager.darkBlueColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
