import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test/controllers/controllers.dart';
import 'package:getx_test/ui/detail/detail_screen.dart';
import 'package:getx_test/ui/routes/routes.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final MemesControllers memesControllers = Get.put(MemesControllers());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Getx Test'),
          backgroundColor: Colors.cyan,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () {
                if (memesControllers.isLoading.isTrue) {
                  return Center(child: CircularProgressIndicator());
                }
                return Expanded(
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) => Column(
                      children: [
                        ListTile(
                          dense: true,
                          isThreeLine: true,
                          onLongPress: () => Get.showSnackbar(
                            GetSnackBar(
                              message: 'Helloo',
                              duration: Duration(seconds: 3),
                              snackPosition: SnackPosition.TOP,
                              title: 'Lol',
                              icon: Icon(Icons.message_outlined),
                              backgroundColor: Colors.redAccent,
                            ),
                          ),
                          onTap: () => Get.toNamed(
                            Routes.todetailScreen(),
                            arguments: {
                              'name': memesControllers.data[index].name,
                              'imageUrl': memesControllers.data[index].url,
                            },
                          ),
                          title: Text(memesControllers.data[index].name),
                          subtitle: Text(memesControllers.data[index].id),
                          trailing:
                              Image.network(memesControllers.data[index].url),
                        ),
                        Divider(),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ));
  }
}
