import 'package:flutter/material.dart';

import 'dashed_separator.dart';

class DashedStepperIndicators extends StatelessWidget {
  final String duration;
  final String location;
  final String code;

  const DashedStepperIndicators({
    super.key,
    required this.duration,
    required this.location,
    required this.code,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 70),
            SizedBox(
              width: 60,
              child: DashedSeparator(
                height: 2,
                color:
                    HSLColor.fromColor(Colors.red).withLightness(0.8).toColor(),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 146,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 48,
                child: Column(
                  children: [
                    Text(
                      "Layover in",
                      maxLines: 1,
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall
                          ?.copyWith(color: Colors.red),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      location,
                      maxLines: 1,
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall
                          ?.copyWith(color: Colors.red),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "($code)",
                      maxLines: 1,
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall
                          ?.copyWith(color: Colors.red),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Card(
                    margin:
                        const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                    elevation: 0,
                    color: HSLColor.fromColor(Colors.red)
                        .withLightness(0.92)
                        .toColor(),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 4.0, horizontal: 6.0),
                      child: Text(
                        duration,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Column(
          children: [
            const SizedBox(height: 70),
            SizedBox(
              width: 60,
              child: DashedSeparator(
                height: 2,
                color: HSLColor.fromColor(
                  Colors.red,
                ).withLightness(0.8).toColor(),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
