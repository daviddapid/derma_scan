import 'package:derma_scan/utils/Disease.dart';
import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  Detail({
    super.key,
    required this.prediction,
  });

  final prediction;
  late Disease _disease;

  @override
  Widget build(BuildContext context) {
    _disease = Disease(prediction: prediction);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Derma Scan', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.lightBlue.shade300,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Image.asset(
            _disease.getImagePath(),
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.lightBlue),
            child: Text(
              _disease.getLabel(),
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 15),
              // decoration: BoxDecoration(border: Border.all(color: Colors.red, width: 2)),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 15),
                    Text(
                      'Ringkasan',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      _disease.getFullDesc(),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Gejala',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      _disease.getSymptom(),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Pengobatan',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      _disease.getTreatment(),
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
