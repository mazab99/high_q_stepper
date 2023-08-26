import 'package:flutter/material.dart';
import 'package:high_q_stepper/src/steppers/Vertical/vertical_stepper_indicators.dart';

class VerticalStepper extends StatelessWidget {
  final List<String> timings;
  final List<String> charges;
  final List<String> myTimings = List.empty(growable: true);
  final List<String> myCharges = List.empty(growable: true);

  VerticalStepper({super.key, required this.timings, required this.charges});

  @override
  Widget build(BuildContext context) {
    myTimings.addAll(timings);
    myCharges.addAll(charges);
    if (timings.length <= charges.length) {
      myTimings.addAll(List.filled(charges.length - timings.length, ""));
    } else {
      myCharges.addAll(List.filled(timings.length - charges.length, ""));
    }
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Cancellation window",
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                Text(
                  "Charges",
                  style: Theme.of(context).textTheme.labelLarge,
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: myCharges
                    .asMap()
                    .map((index, value) => MapEntry(
                        index,
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            VerticalStepperIndicators(
                              isLast: index == myCharges.length - 1,
                            ),
                            Expanded(
                              child: Text(
                                myTimings[index],
                                style: Theme.of(context).textTheme.labelSmall,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                value,
                                style: Theme.of(context).textTheme.labelSmall,
                                textAlign: TextAlign.right,
                              ),
                            ),
                          ],
                        )))
                    .values
                    .toList(),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "As per local time at the property",
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
