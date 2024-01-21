import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class UploadImageScreen extends StatefulWidget {
  const UploadImageScreen({Key? key}) : super(key: key);

  @override
  State<UploadImageScreen> createState() => _UploadImageScreenState();
}

class _UploadImageScreenState extends State<UploadImageScreen> {
  File? image;
  final _picker = ImagePicker();
  bool showSpinner = false;

  // Function to get Image from library
  Future getImage()async {
    final pickedImage = await _picker.pickImage(source: ImageSource.gallery, imageQuality: 80);

    if(pickedImage!=null){
      image = File(pickedImage.path);
      setState(() {

      });
    }else {
      print('no image selected');
    }
  }

  Future<void> uploadImage()async {
    setState(() {
      showSpinner = true;
    });

    var stream = new http.ByteStream(image!.openRead());
    stream.cast();

    var length = await image!.length;
    var uri = Uri.parse('https://fakestoreapi.com/products');

    var request = http.MultipartRequest('POST', uri);

    request.fields['title'] = 'static title';

    var multiport = new http.MultipartFile(
        'image',
        stream,
        length as int);

    request.files.add(multiport);
    var response = await request.send();

    print(response.stream.toString());

    if(response.statusCode == 200){
      print('image uploaded');
    }else {
      print('failed');
    }
  }

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: showSpinner,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Upload Image'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: (){
                getImage();
              },
              child: Container(
                child: image == null
                    ? Center(
                        child: Text('Pick Image', style: TextStyle(fontSize: 18),),
                      )
                    : Container(
                        child: Center(
                          child: Image.file(
                            File(image!.path).absolute,
                            height: 100,
                            width: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
              ),
            ),
            SizedBox(height: 150,),
            GestureDetector(
              onTap: (){
                 uploadImage();
              }, //video: 21:47
              child: Container(
                height: 50,
                width: 200,
                color: Colors.green,
                child: Center(child: Text('Upload Image')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
