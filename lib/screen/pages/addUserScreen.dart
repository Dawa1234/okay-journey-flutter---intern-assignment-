import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intern_assignment/static/app.dart';

class AddUserData extends StatefulWidget {
  const AddUserData({Key? key}) : super(key: key);

  @override
  State<AddUserData> createState() => _AddUserDataState();
}

class _AddUserDataState extends State<AddUserData> {
  File? _img;

  _messageBar(String message) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  // Select image
  _pickimage(ImageSource imageSource) async {
    final image = await ImagePicker().pickImage(source: imageSource);

    if (image != null) {
      setState(() {
        _img = File(image.path);
      });
      return;
    }
    _messageBar("No Image Selected");
  }

  // showbottomsheet
  _showBottomSheet() {
    showModalBottomSheet(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
        context: context,
        builder: (context) => Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton.icon(
                      onPressed: () {
                        _pickimage(ImageSource.camera);
                      },
                      icon: const Icon(Icons.camera),
                      label: const Text("Camera")),
                  ElevatedButton.icon(
                      onPressed: () {
                        _pickimage(ImageSource.gallery);
                      },
                      icon: const Icon(Icons.photo),
                      label: const Text("Gallery"))
                ],
              ),
            ));
  }

  // image
  Widget _selectImage() {
    return Center(
      child: Container(
        width: 150,
        height: 150,
        clipBehavior: Clip.hardEdge,
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(75),
            color: Colors.orange,
            image: _img != null
                ? DecorationImage(fit: BoxFit.fill, image: FileImage(_img!))
                : null),
        child: InkWell(
          onTap: () {
            _showBottomSheet();
          },
          child: Container(
            height: 60,
            width: double.infinity,
            color: const Color.fromARGB(157, 122, 122, 122),
            child: const Icon(Icons.camera_alt),
          ),
        ),
      ),
    );
  }

  // Gaps
  final _gap = const SizedBox(
    height: 10,
  );
  final TextEditingController _nameController = TextEditingController();

  // TextField Decoration
  final fieldDecoration = InputDecoration(
    hintText: "Actor's name",
    contentPadding: const EdgeInsets.all(10),
    enabled: true,
    enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.orange, width: 1),
        borderRadius: BorderRadius.circular(10)),
    focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.orange, width: 1),
        borderRadius: BorderRadius.circular(10)),
  );

  // Add Data
  Future _addActor() async {
    if (_img == null || _nameController.text == "") {
      _messageBar("Please add image and name!");
      return;
    }
    // previous data
    int previousData = Constant.actors.length;
    Actors newActor = Actors(image: _img!, name: _nameController.text);
    Constant.actors.add(newActor);
    // new data
    int currentData = Constant.actors.length;
    if (currentData > previousData) {
      _messageBar("Data Added");
      setState(() {
        _img = null;
        _nameController.text = "";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                _selectImage(),
                _gap,
                TextFormField(
                  controller: _nameController,
                  decoration: fieldDecoration,
                ),
                _gap,
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                      onPressed: () {
                        _addActor();
                      },
                      icon: const Icon(Icons.add),
                      label: const Text("Add Actor")),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
