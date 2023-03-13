import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment/components/image.dart';
import 'dart:io';

import 'package:image_picker/image_picker.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String imgUrl = "";
  String imgUrl2 = "";
  PlatformFile? pickedFile;
  File? _image;
  File? _image1;
  XFile? file1;
  XFile? file2;

  submit1() async {
    ImagePicker imagePicker = ImagePicker();
    file1 = await imagePicker.pickImage(source: ImageSource.gallery);
    print('${file1?.path}');

    if (file1 == null) return;
    final imageTemporary = File(file1!.path);
    setState(() {
      _image = imageTemporary;
    });
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text('photo has been submitted')));
  }

  submit2() async {
    ImagePicker imagePicker = ImagePicker();
    file2 = await imagePicker.pickImage(source: ImageSource.gallery);
    print('${file2?.path}');

    if (file2 == null) return;
    final imageTemporary = File(file2!.path);
    setState(() {
      _image1 = imageTemporary;
    });

    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text('photo has been submitted')));
  }

  submit() async {
    //Import dart:core
    String uniqueFileName = DateTime.now().millisecondsSinceEpoch.toString();
    String uniqueFileName1 = DateTime.now().millisecondsSinceEpoch.toString();
    //step 2 : upload the image to firebase storage
    Reference referenceRoot = FirebaseStorage.instance.ref();
    Reference referenceDirImages = referenceRoot.child('images');

    //Create a reference for the image to be stored
    Reference referenceImageToUpload = referenceDirImages.child(uniqueFileName);
    Reference referenceImageToUpload1 =
        referenceDirImages.child(uniqueFileName1);

    //Handle errors/success
    try {
      //Store the file
      await referenceImageToUpload.putFile(File(file1!.path));
      await referenceImageToUpload1.putFile(File(file2!.path));
      //Success: get the download URL
      imgUrl = await referenceImageToUpload.getDownloadURL();
      imgUrl2 = await referenceImageToUpload1.getDownloadURL();
    } catch (error) {
      //Some error occurred
    }
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('photo has been uploaded to firebase')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Toolbar'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              // ignore: prefer_const_constructors
              TextImage(
                  text: "image 1",
                  image: imgUrl,
                  func: submit1),
              TextImage(
                  text: "image 2",
                  image: imgUrl2,
                  func: submit2),
            ]),
            TextButton(
                onPressed: submit,
                child: Text('Submit',
                    style: TextStyle(
                      fontSize: 20,
                    )),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                )),
          ],
        ));
  }
}

Widget myButton({required String text, required Function func}) {
  return TextButton(
      onPressed: () {
        func();
      },
      child: Text(text,
          style: TextStyle(
            fontSize: 20,
          )),
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.blue),
        foregroundColor: MaterialStateProperty.all(Colors.white),
      ));
}
