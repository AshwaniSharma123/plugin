import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  File _image;
  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState( ()
    {
      _image = image;
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Plug'),
        backgroundColor: Colors.transparent,
      ),
      body: Container(
//      height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(image:
          AssetImage('Asset/Image.jpeg'),
          ),
        ),
        child: _image == null
            ? Text('No image selected.')
            : Image.file(_image, height: 800, width: 400,),
      ),
      //scafold property
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: getImage,
        tooltip: 'Gallery',
        child: Icon(Icons.photo),
      ),
    );
  }
}
