import 'package:flutter/material.dart';
import 'package:high_q_stepper/src/models/models.dart';
import 'package:high_q_stepper/src/steppers/Vertical/vertical_stepper.dart';
import 'package:high_q_stepper/src/steppers/horizontal%20/horizontal_stepper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HighQ Stepper',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Mahmoud Azab'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<FlightDetailModel> flightDetails = [
    FlightDetailModel(
      flightName: "1",
      flightNumber: "MS-123",
      departureName: "Cairo",
      departureCode: "CAI",
      departureTerminal: "Terminal 3",
      arrivalName: "Luxor",
      arrivalCode: "LXR",
      arrivalTerminal: "Terminal 1",
      departureTime: DateTime(2023, 5, 11, 9, 30),
      arrivalTime: DateTime(2023, 5, 11, 10, 45),
    ),
    FlightDetailModel(
      flightName: "2",
      flightNumber: "MS-456",
      departureName: "Luxor",
      departureCode: "LXR",
      departureTerminal: "Terminal 1",
      arrivalName: "Sharm El Sheikh",
      arrivalCode: "SSH",
      arrivalTerminal: "Terminal 2",
      departureTime: DateTime(2023, 5, 11, 14, 15),
      arrivalTime: DateTime(2023, 5, 11, 15, 45),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            VerticalStepper(
              timings: const [
                "Till 11th Jun'23, 02:00 PM",
                "checking 2nd step",
                "checking 3rd step",
                "From 11th Jun'23 02:00 PM, till 14th Jun'23, 02:00 PM",
              ],
              charges: const [
                "\$0",
                "checking",
                "checking",
                "100% of the booking amount will be charged",
              ],
            ),
            HorizontalStepper(
              flightDetails: flightDetails,
            ),
          ],
        ),
      ),
    );
  }
}
