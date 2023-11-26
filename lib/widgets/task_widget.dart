import 'dart:convert';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:pomodoro/classes/models/task.dart';
import 'package:pomodoro/pages/home.dart';
import 'package:http/http.dart' as http;

class TaskWidget extends StatefulWidget {
  const TaskWidget({super.key});

  @override
  State<TaskWidget> createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
  @override
  Widget build(BuildContext context) {
    final task = Task(
      title: 'Duo',
      focusTime: 30,
      breakTime: 5,
      createdTime: '',
      loops: '100',
    );

    return Scaffold(
      body: Center(
        child: IconButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return Home(task: task);
            }));
          },
          icon: const Icon(
            Icons.play_arrow,
            size: 30,
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
