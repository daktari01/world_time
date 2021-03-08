import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  void getData() async {

    // Simulate a network request for a username
    String username = await Future.delayed(Duration(seconds: 3), () {
      return 'Daktata';
    });

    // Simulate a network request for username's bio
    String bio = await Future.delayed(Duration(seconds: 2), () {
      return 'Father, swimmer, coder';
    });

    print('My username is $username and my bio is $bio');
  }

  @override
  void initState() {
    super.initState();
    getData();
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
      body: ElevatedButton()
    );
  }
}
