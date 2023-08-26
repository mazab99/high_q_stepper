import 'package:flutter/material.dart';

import '../../models/models.dart';
import '../../shared/stepper_circle.dart';

class HorizontalStepperIndicators extends StatelessWidget {
  final FlightDetailModel flightDetail;

  const HorizontalStepperIndicators({
    super.key,
    required this.flightDetail,
  });

  @override
  Widget build(BuildContext context) {
    final duration = flightDetail.arrivalTime.difference(
      flightDetail.departureTime,
    );

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 62),
            Row(
              children: [
                const SizedBox(
                  width: 60,
                ),
                const StepperCircle(
                  size: 8,
                  color: Colors.red,
                ),
                SizedBox(
                  width: 60,
                  child: Divider(
                    thickness: 2,
                    indent: 2,
                    endIndent: 0,
                    color: HSLColor.fromColor(Colors.blue)
                        .withLightness(0.8)
                        .toColor(),
                  ),
                ),
              ],
            ),
            Text(
              "${flightDetail.departureTime.hour.toString().padLeft(2, '0')}:${flightDetail.departureTime.minute.toString().padLeft(2, '0')}",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(
              "${flightDetail.departureTime.day}${flightDetail.departureTime.ordinalSuffix} ${flightDetail.departureTime.monthName} ${flightDetail.departureTime.year}",
              style: Theme.of(context).textTheme.labelSmall,
            ),
            Text(
              "${flightDetail.departureName} (${flightDetail.departureCode})",
              style: Theme.of(context).textTheme.labelLarge,
            ),
            Text(
              flightDetail.departureTerminal,
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ],
        ),
        SizedBox(
          height: 100,
          child: IntrinsicWidth(
            child: Column(
              children: [
                SizedBox(
                  height: 48,
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(2.0),
                            child: CircleAvatar(
                              radius: 10,
                              backgroundImage: AssetImage("assets/loyalty.png"),
                            ),
                          ),
                          Text(
                            flightDetail.flightName,
                            style: Theme.of(context).textTheme.titleSmall,
                          )
                        ],
                      ),
                      Text(
                        flightDetail.flightNumber,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.titleSmall,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      // width: 30,
                      child: Divider(
                        thickness: 2,
                        color: HSLColor.fromColor(Colors.blue)
                            .withLightness(0.8)
                            .toColor(),
                      ),
                    ),
                    Card(
                      margin: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 0,
                      ),
                      elevation: 0,
                      color: HSLColor.fromColor(Colors.blue)
                          .withLightness(0.92)
                          .toColor(),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 6.0),
                        child: Text(
                          "${duration.inHours.toString().padLeft(2, '0')}h ${(duration.inMinutes % 60).toString().padLeft(2, '0')}m",
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ),
                    ),
                    Expanded(
                      // width: 30,
                      child: Divider(
                        thickness: 2,
                        color: HSLColor.fromColor(Colors.blue)
                            .withLightness(0.8)
                            .toColor(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 62),
            Row(
              children: [
                SizedBox(
                  width: 60,
                  child: Divider(
                    thickness: 2,
                    endIndent: 2,
                    color: HSLColor.fromColor(Colors.blue)
                        .withLightness(0.8)
                        .toColor(),
                  ),
                ),
                const StepperCircle(
                  size: 8,
                  color: Colors.red,
                ),
                const SizedBox(
                  width: 60,
                ),
              ],
            ),
            Text(
              "${flightDetail.arrivalTime.hour.toString().padLeft(2, '0')}:${flightDetail.arrivalTime.minute.toString().padLeft(2, '0')}",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(
              "${flightDetail.arrivalTime.day}${flightDetail.arrivalTime.ordinalSuffix} ${flightDetail.arrivalTime.monthName} ${flightDetail.arrivalTime.year}",
              style: Theme.of(context).textTheme.labelSmall,
            ),
            Text(
              "${flightDetail.arrivalName} (${flightDetail.arrivalCode})",
              style: Theme.of(context).textTheme.labelLarge,
            ),
            Text(
              flightDetail.arrivalCode,
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ],
        ),
      ],
    );
  }
}
