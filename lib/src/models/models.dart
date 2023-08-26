class FlightDetailModel {
  final String flightName;
  final String flightNumber;

  final String departureName;
  final String departureCode;
  final String departureTerminal;

  final String arrivalName;
  final String arrivalCode;
  final String arrivalTerminal;

  final DateTime departureTime;
  final DateTime arrivalTime;

  FlightDetailModel({
    required this.flightName,
    required this.flightNumber,
    required this.departureName,
    required this.departureCode,
    required this.arrivalName,
    required this.arrivalCode,
    required this.departureTime,
    required this.arrivalTime,
    required this.departureTerminal,
    required this.arrivalTerminal,
  });
}

extension DateTimeExtension on DateTime {
  String get ordinalSuffix {
    switch (day) {
      case 1:
      case 21:
      case 31:
        return 'st';
      case 2:
      case 22:
        return 'nd';
      case 3:
      case 23:
        return 'rd';
      default:
        return 'th';
    }
  }

  String get monthName {
    switch (month) {
      case 1:
        return 'January';
      case 2:
        return 'February';
      case 3:
        return 'March';
      case 4:
        return 'April';
      case 5:
        return 'May';
      case 6:
        return 'June';
      case 7:
        return 'July';
      case 8:
        return 'August';
      case 9:
        return 'September';
      case 10:
        return 'October';
      case 11:
        return 'November';
      case 12:
        return 'December';
      default:
        return '';
    }
  }
}
