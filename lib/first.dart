import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx/route/route.dart';
import 'package:getx/second.dart';

import 'controller/controller.dart';

class FirstScreen extends StatelessWidget {
   FirstScreen({Key? key}) : super(key: key);

final controller=Get.put(CountController());

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.green,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
         controller.increament();
        },
        child: Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    Get.toNamed('secondscreen');
                  },
                  child: Text('go to second')),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    //   Get.snackbar('tarik', 'this is tarik message',snackPosition: SnackPosition.BOTTOM);
                    //   Get.defaultDialog(title: 'i am a dialog');
                    Get.bottomSheet(Container(
                        height: 150,
                        color: Colors.greenAccent,
                        child: Column(
                          children: [
                            Text('Hii 1', textScaleFactor: 2),
                            Text('Hii 2', textScaleFactor: 2),
                            Text('Hii 3', textScaleFactor: 2),
                            Text('Hii 4', textScaleFactor: 2),
                          ],
                        )));
                  },
                  child: Text('snackbar')),
              Obx(()=> Text(controller.count.toString(),style: TextStyle(fontSize: 30),))
            ],
          ),
        ),
      ),
    );
  }
}
