import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/color_manager.dart';

class ProSection extends StatelessWidget {
  const ProSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
