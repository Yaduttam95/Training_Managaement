import '../NavBars/NavBarTrainer.dart';

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class TrainerDboard extends StatefulWidget {
  @override
  CalendarAppointment createState() => CalendarAppointment();
}

class CalendarAppointment extends State<TrainerDboard> {
  final CalendarDataSource _dataSource = _DataSource(<Appointment>[]);
  final List<String> _subjectCollection = <String>[];
  final List<DateTime> _startTimeCollection = <DateTime>[];
  final List<DateTime> _endTimeCollection = <DateTime>[];
  final List<Color> _colorCollection = <Color>[];
  List<TimeRegion> _specialTimeRegion = <TimeRegion>[];

  @override
  void initState() {
    _getSubjectCollection();
    _getStartTimeCollection();
    _getEndTimeCollection();
    _getColorCollection();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Schedule'),
          backgroundColor: Color.fromRGBO(243, 101, 1, 2),
        ),
        drawer: NavBarTrainer(),
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              colorFilter: new ColorFilter.mode(
                  Colors.black.withOpacity(0.3), BlendMode.dstATop),
              image: AssetImage("assets/images2/DBbackk.jpg"),
              fit: BoxFit.fill,
            )),
            child: SfCalendar(
              dataSource: _dataSource,
              view: CalendarView.day,
              allowedViews: [
                CalendarView.day,
                CalendarView.week,
                CalendarView.workWeek,
                CalendarView.month
              ],
              onViewChanged: viewChanged,
              specialRegions: _specialTimeRegion,
            ),
          ),
        ),
      ),
    );
  }

  void viewChanged(ViewChangedDetails viewChangedDetails) {
    List<DateTime> visibleDates = viewChangedDetails.visibleDates;
    List<TimeRegion> _timeRegion = <TimeRegion>[];
    List<Appointment> appointments = <Appointment>[];
    _dataSource.appointments!.clear();

    for (int i = 0; i < visibleDates.length; i++) {
      if (visibleDates[i].weekday == 6 || visibleDates[i].weekday == 7) {
        continue;
      }
      _timeRegion.add(TimeRegion(
          startTime: DateTime(visibleDates[i].year, visibleDates[i].month,
              visibleDates[i].day, 13, 0, 0),
          endTime: DateTime(visibleDates[i].year, visibleDates[i].month,
              visibleDates[i].day, 14, 0, 0),
          text: 'Break',
          enablePointerInteraction: false));
      SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
        setState(() {
          _specialTimeRegion = _timeRegion;
        });
      });
      for (int j = 0; j < _startTimeCollection.length; j++) {
        DateTime startTime = new DateTime(
            visibleDates[i].year,
            visibleDates[i].month,
            visibleDates[i].day,
            _startTimeCollection[j].hour,
            _startTimeCollection[j].minute,
            _startTimeCollection[j].second);
        DateTime endTime = new DateTime(
            visibleDates[i].year,
            visibleDates[i].month,
            visibleDates[i].day,
            _endTimeCollection[j].hour,
            _endTimeCollection[j].minute,
            _endTimeCollection[j].second);
        Random random = Random();
        appointments.add(Appointment(
            startTime: startTime,
            endTime: endTime,
            subject: _subjectCollection[random.nextInt(19)],
            color: Color.fromRGBO(243, 101, 1, 1)));
      }
    }
    for (int i = 0; i < appointments.length; i++) {
      _dataSource.appointments!.add(appointments[i]);
    }
    _dataSource.notifyListeners(
        CalendarDataSourceAction.reset, _dataSource.appointments!);
  }

  void _getSubjectCollection() {
    _subjectCollection.add('Class A2');
    _subjectCollection.add('Class A1');
    _subjectCollection.add('Class B1');
    _subjectCollection.add('Class B2');
    _subjectCollection.add('Class C1');
    _subjectCollection.add('Class C2');
    _subjectCollection.add('Class D1');
    _subjectCollection.add('Class D2');
    _subjectCollection.add('Class E1');
    _subjectCollection.add('Class E2');
    _subjectCollection.add('Class E3');
    _subjectCollection.add('Class D3');
    _subjectCollection.add('Class C3');
    _subjectCollection.add('Class B3');
    _subjectCollection.add('Class A3');
    _subjectCollection.add('Class A4');
    _subjectCollection.add('Class B4');
    _subjectCollection.add('Class C4');
    _subjectCollection.add('Class D4');
    _subjectCollection.add('Class E4');
  }

  void _getStartTimeCollection() {
    var currentDateTime = DateTime.now();

    _startTimeCollection.add(new DateTime(currentDateTime.year,
        currentDateTime.month, currentDateTime.day, 9, 0, 0));
    _startTimeCollection.add(new DateTime(currentDateTime.year,
        currentDateTime.month, currentDateTime.day, 10, 0, 0));
    _startTimeCollection.add(new DateTime(currentDateTime.year,
        currentDateTime.month, currentDateTime.day, 11, 0, 0));
    _startTimeCollection.add(new DateTime(currentDateTime.year,
        currentDateTime.month, currentDateTime.day, 12, 0, 0));
    _startTimeCollection.add(new DateTime(currentDateTime.year,
        currentDateTime.month, currentDateTime.day, 14, 0, 0));
    _startTimeCollection.add(new DateTime(currentDateTime.year,
        currentDateTime.month, currentDateTime.day, 15, 0, 0));
    _startTimeCollection.add(new DateTime(currentDateTime.year,
        currentDateTime.month, currentDateTime.day, 16, 0, 0));
    _startTimeCollection.add(new DateTime(currentDateTime.year,
        currentDateTime.month, currentDateTime.day, 17, 0, 0));
    _startTimeCollection.add(new DateTime(currentDateTime.year,
        currentDateTime.month, currentDateTime.day, 18, 0, 0));
  }

  void _getEndTimeCollection() {
    var currentDateTime = DateTime.now();
    _endTimeCollection.add(new DateTime(currentDateTime.year,
        currentDateTime.month, currentDateTime.day, 10, 0, 0));
    _endTimeCollection.add(new DateTime(currentDateTime.year,
        currentDateTime.month, currentDateTime.day, 11, 0, 0));
    _endTimeCollection.add(new DateTime(currentDateTime.year,
        currentDateTime.month, currentDateTime.day, 12, 0, 0));
    _endTimeCollection.add(new DateTime(currentDateTime.year,
        currentDateTime.month, currentDateTime.day, 13, 0, 0));
    _endTimeCollection.add(new DateTime(currentDateTime.year,
        currentDateTime.month, currentDateTime.day, 15, 0, 0));
    _endTimeCollection.add(new DateTime(currentDateTime.year,
        currentDateTime.month, currentDateTime.day, 16, 0, 0));
    _endTimeCollection.add(new DateTime(currentDateTime.year,
        currentDateTime.month, currentDateTime.day, 17, 0, 0));
    _endTimeCollection.add(new DateTime(currentDateTime.year,
        currentDateTime.month, currentDateTime.day, 18, 0, 0));
    _endTimeCollection.add(new DateTime(currentDateTime.year,
        currentDateTime.month, currentDateTime.day, 19, 0, 0));
  }

  void _getColorCollection() {
    _colorCollection.add(Color(0xff000071));
  }
}

class _DataSource extends CalendarDataSource {
  _DataSource(List<Appointment> source) {
    appointments = source;
  }
}
