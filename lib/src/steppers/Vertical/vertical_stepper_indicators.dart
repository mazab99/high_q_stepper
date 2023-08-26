import 'package:flutter/material.dart';
import 'package:high_q_stepper/src/shared/stepper_circle.dart';

class VerticalStepperIndicators extends StatelessWidget {
  final bool isLast;

  const VerticalStepperIndicators({super.key, required this.isLast});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: isLast ? 0.0 : 4.0, right: 4.0),
      child: isLast
          ? const Column(
              children: [
                SizedBox(
                  height: 20,
                  child: VerticalDivider(
                    color: Colors.green,
                    endIndent: 2,
                    thickness: 2,
                  ),
                ),
                StepperCircle(size: 10, color: Colors.red),
              ],
            )
          : const Column(
              children: [
                StepperCircle(size: 10, color: Colors.green),
                SizedBox(
                  height: 40,
                  child: VerticalDivider(
                    color: Colors.green,
                    thickness: 2,
                    indent: 2,
                    // endIndent: 2,
                  ),
                ),
              ],
            ),
    );
  }
}
