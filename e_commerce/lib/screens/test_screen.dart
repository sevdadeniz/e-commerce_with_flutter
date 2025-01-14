// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AttendanceWidget extends StatefulWidget {
  Color? color;
  AttendanceWidget({
    Key? key,
    this.color,
  }) : super(key: key);

  @override
  _AttendanceWidgetState createState() => _AttendanceWidgetState();
}

class _AttendanceWidgetState extends State<AttendanceWidget> {
  static var countdownDuration = Duration(minutes: 10);
  static var countdownDuration1 = Duration(minutes: 10);
  Duration duration = Duration();
  Duration duration1 = Duration();
  Timer? timer;
  Timer? timer1;
  bool countDown = true;
  bool countDown1 = true;

  @override
  void initState() {
    super.initState();
    initializeTimers();
  }

  void initializeTimers() {
    countdownDuration = Duration(hours: 0, minutes: 0, seconds: 0);
    startTimer();
    reset();

    countdownDuration1 = Duration(hours: 10, minutes: 0, seconds: 0);
    startTimer1();
    reset1();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140.w,
      decoration: BoxDecoration(
          color: widget.color == null ? Colors.white : widget.color,
          borderRadius: BorderRadius.circular(5.r)),
      margin: EdgeInsets.symmetric(vertical: 5.h, horizontal: 3.h),
      child: buildTime(),
    );
  }

  void reset() {
    if (countDown) {
      setState(() => duration = countdownDuration);
    } else {
      setState(() => duration = Duration());
    }
  }

  void reset1() {
    if (countDown1) {
      setState(() => duration1 = countdownDuration1);
    } else {
      setState(() => duration1 = Duration());
    }
  }

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (_) => addTime());
  }

  void startTimer1() {
    timer1 = Timer.periodic(Duration(seconds: 1), (_) => addTime1());
  }

  void addTime() {
    final addSeconds = 1;
    setState(() {
      final seconds = duration.inSeconds + addSeconds;
      if (seconds < 0) {
        timer?.cancel();
      } else {
        duration = Duration(seconds: seconds);
      }
    });
  }

  void addTime1() {
    final addSeconds = 1;
    setState(() {
      final seconds = duration1.inSeconds - addSeconds;
      if (seconds < 0) {
        timer1?.cancel();
      } else {
        duration1 = Duration(seconds: seconds);
      }
    });
  }

  Widget buildTime() {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = twoDigits(duration1.inHours);
    final minutes = twoDigits(duration1.inMinutes.remainder(60));
    final seconds = twoDigits(duration1.inSeconds.remainder(60));
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildTimeCard(time: hours, header: 'HRS'),
        SizedBox(width: 2.w),
        buildTimeCard(time: minutes, header: 'MIN'),
        SizedBox(width: 2.w),
        buildTimeCard(time: seconds, header: 'SEC'),
      ],
    );
  }

  Widget buildTimeCard({required String time, required String header}) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(5.h),
            child: Text(
              time,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 14.sp,
              ),
            ),
          ),
          Text(
            header,
            style: TextStyle(color: Colors.white, fontSize: 8.sp),
          ),
        ],
      );
}
