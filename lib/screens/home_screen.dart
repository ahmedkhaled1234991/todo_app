import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todo_app/utils/color_manager.dart';

import '../widgets/task_list_widget.dart';
import '../widgets/welcome_section.dart';
import 'add_task _screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return AddTaskScreen();
          }));
        },
        backgroundColor: ColorManager.primaryColor,
        shape: const CircleBorder(
          side: BorderSide(
            color: ColorManager.floatingActionButtonBorderColor,
            width: 2,
          ),
        ),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                // First section
                const WelcomeSection(),

                // Second section
                Container(
                  width: double.infinity,
                  height: 120,
                  decoration: BoxDecoration(
                    color: ColorManager.greenSectionColor,
                    border: Border.all(
                      color: ColorManager.greenSectionBorderColor,
                      width: 2,
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: ColorManager.greenSectionBorderColor,
                        blurRadius: 0,
                        offset: Offset(0, -4),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: ColorManager.greenSectionColor,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white.withOpacity(0.6),
                              blurRadius: 0,
                              offset: const Offset(0, -4),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 24, top: 26),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 4),
                                child: SvgPicture.asset(
                                  "assets/icons/cup_icon.svg",
                                  width: 53,
                                  height: 41,
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Go Pro (No Ads)",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: ColorManager.darkBlueColor,
                                      shadows: [
                                        Shadow(
                                          blurRadius: 4.0,
                                          color: Colors.white,
                                          offset: Offset(0.0, 2.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    "No fuss, no ads, for only \$1 a\nmonth",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: ColorManager.darkBlueColor,
                                      height: 1,
                                      shadows: [
                                        Shadow(
                                          blurRadius: 4.0,
                                          color: Colors.white,
                                          offset: Offset(0.0, 2.0),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Tasks section
                Flexible(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, top: 20),
                    child: ListView.builder(
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        // Column to show active and not active tasks
                        return Column(
                          children: [
                            TaskListWidget(
                              isSelected: true,
                            ),
                            TaskListWidget(),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 119,
              right: 20,
              child: Container(
                width: 66,
                height: 71,
                color: ColorManager.darkBlueColor,
                child: Center(
                  child: Text(
                    "\$1",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.yellow[600],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
