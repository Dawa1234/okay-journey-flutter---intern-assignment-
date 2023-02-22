import 'package:flutter/material.dart';
import 'package:intern_assignment/static/app.dart';

class AllUserData extends StatelessWidget {
  AllUserData({Key? key}) : super(key: key);
  final allUser = Constant.actors;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: allUser.isEmpty
          ? const Center(
              child: Text("No Users Yet"),
            )
          : ListView.builder(
              itemCount: allUser.length,
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.orange,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.orange,
                      backgroundImage: FileImage(allUser[index].image),
                    ),
                    title: Text(
                      allUser[index].name,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                );
              }),
    );
  }
}
