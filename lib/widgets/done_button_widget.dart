import 'package:flutter/material.dart';
import 'package:todo_app/utils/color_manager.dart';

class DoneButtonWidget extends StatelessWidget {
  const DoneButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorManager.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
          side: const BorderSide(
            color: ColorManager.darkBlueColor,
            width: 2,
          ),
        ),
        fixedSize: const Size(365, 61),
      ),
      onPressed: () {},
      child: const Text(
        "Done",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          color: Colors.white,
        ),
      ),
    );
  }
}
