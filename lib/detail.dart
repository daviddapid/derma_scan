import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  Detail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Derma Scan', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.lightBlue.shade300,
        centerTitle: true,
      ),
      body: Center(child: Text('okok')),
    );
  }
}
