class Event {
  final int id;
  final String eventDate;
  final String eventName;
  final double eventTime;
  final String venueName;
  final String venueAddress;
  final String participantName;
  final String participantAvailability;

  Event({
    required this.id,
    required this.eventDate,
    required this.eventName,
    required this.eventTime,
    required this.venueName,
    required this.venueAddress,
    required this.participantName,
    required this.participantAvailability,
  });

  factory Event.fromJson(Map<String, dynamic> json) {
    return Event(
      id: json['id'],
      eventDate: json['Event Date'],
      eventName: json['Event Name'],
      eventTime: double.parse(json['Event Time']),
      venueName: json['Venue Name'],
      venueAddress: json['Venue Address'],
      participantName: json['Participant Name'],
      participantAvailability: json['Participant Availability'],
    );
  }
}
