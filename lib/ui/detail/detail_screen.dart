import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.width * .7,
          width: MediaQuery.of(context).size.width * .7,
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 2.0,
                spreadRadius: 2.0,
                offset: Offset(2, 1),
              ),
            ],
          ),
          child: Column(
            children: [
              Text('data'),
              Text(Get.arguments['name']),
              SizedBox(
                height: 200.0,
                child: Image.network(
                  Get.arguments['imageUrl'],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
