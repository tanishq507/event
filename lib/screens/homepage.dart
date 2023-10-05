import 'package:flutter/material.dart';
import 'Event.dart';
import 'api.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Eventify'),
      ),
      body: FutureBuilder<List<Event>>(
        future: fetchEventData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            List<Event> events = snapshot.data!;
            return ListView.builder(
              itemCount: events.length,
              itemBuilder: (context, index) {
                Event event = events[index];
                return ListTile(
                  title: Text(event.eventName),
                  subtitle: Text(event.venueName),
                );
              },
            );
          }
        },
      ),
    );
  }
}
