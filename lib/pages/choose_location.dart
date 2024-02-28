// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  void getData() async {
    String username = await Future.delayed(Duration(seconds: 2), () {
      return 'yoshi';
    });

    String bio = await Future.delayed(Duration(seconds: 1), () {
      return 'vegan musician egg collector';
    });

    print('$username - $bio');
  }

  @override
  void initState() {
    super.initState();
    getData();
    print('hey there');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Text('choose a location')
    );
  }
}
