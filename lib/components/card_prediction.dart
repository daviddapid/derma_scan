import 'package:derma_scan/detail.dart';
import 'package:derma_scan/utils/Disease.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardPrediction extends StatelessWidget {
  CardPrediction({
    super.key,
    required this.prediction,
  });

  final prediction;
  late Disease _disease;

  @override
  Widget build(BuildContext context) {
    _disease = Disease(prediction: prediction);

    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      elevation: 1.5,
      child: Column(
        children: [
          Image.asset(
            _disease.getImagePath(),
            height: 110,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Expanded(
            child: Container(
              // decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.red)),
              alignment: Alignment.topLeft,
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${_disease.getLabel()}',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                  ),
                  SizedBox(height: 10),
                  Text('${_disease.getDescLimit(limitLength: 119)}'),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        // TextButton(onPressed: () {}, child: Text('lihat browser')),
                        // TextButton(onPressed: () {}, child: Text('lihat detail'))
                        TextButton.icon(
                          onPressed: () {},
                          label: Text('lihat browser'),
                          icon: Icon(Icons.search, size: 15),
                        ),
                        TextButton.icon(
                          // onPressed: () => Get.to(() => Detail(tagHero: 'tag-$index')),
                          onPressed: () => Get.to(() => Detail(prediction: prediction), transition: Transition.fadeIn),
                          label: Text('lihat detail'),
                          icon: Icon(
                            Icons.remove_red_eye,
                            size: 15,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
