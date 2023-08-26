import 'package:flutter/material.dart';
import 'package:high_q_stepper/src/models/models.dart';

import '../../shared/dashed_stepper_indicators.dart';
import 'horizontal_stepper_indicators.dart';

class HorizontalStepper extends StatelessWidget {
  final List<FlightDetailModel> flightDetails;

  const HorizontalStepper({super.key, required this.flightDetails});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Wrap(
            spacing: -40,
            children: List.generate(flightDetails.length, (index) {
              final duration = (index != flightDetails.length - 1)
                  ? "${flightDetails[index + 1].departureTime.difference(
                        flightDetails[index].arrivalTime,
                      ).inHours.toString().padLeft(2, '0')}h ${(flightDetails[index + 1].departureTime.difference(
                        flightDetails[index].arrivalTime,
                      ).inMinutes % 60).toString().padLeft(2, '0')}m"
                  : "";
              return [
                HorizontalStepperIndicators(flightDetail: flightDetails[index]),
                (index != flightDetails.length - 1)
                    ? DashedStepperIndicators(
                        duration: duration,
                        location: flightDetails[index].arrivalName,
                        code: flightDetails[index].arrivalCode,
                      )
                    : const SizedBox(
                        width: 60,
                      ),
              ];
            }).expand((i) {
              return i;
            }).toList(),
          ),
        ),
      ),
    );
  }
}
