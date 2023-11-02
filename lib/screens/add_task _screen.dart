import 'package:flutter/material.dart';

import '../widgets/done_button_widget.dart';
import '../widgets/text_field_widget.dart';

class AddTaskScreen extends StatelessWidget {
  TextEditingController controller = TextEditingController();

  AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add New Task"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 40,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "Task Name",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          TextFieldWidget(
            controller: controller,
          ),
          const Spacer(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: DoneButtonWidget(),
          ),
          const SizedBox(
            height: 32,
          ),
        ],
      ),
    );
  }
}
