import 'package:flutter/material.dart';
import 'package:kalendar/event/event_page.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Kalendarz'),
        ),
      ),
      body: SfCalendar(
        view: CalendarView.month,
        monthViewSettings: const MonthViewSettings(showAgenda: true),
        initialSelectedDate: DateTime.now(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => const EventPage(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
