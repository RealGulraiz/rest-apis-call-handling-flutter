import 'package:flutter/material.dart';
import 'package:restapis_bootcamp/signup.dart';
import 'package:restapis_bootcamp/upload_image.dart';

class PostApiScreen extends StatefulWidget {
  const PostApiScreen({Key? key}) : super(key: key);

  @override
  State<PostApiScreen> createState() => _PostApiScreenState();
}

class _PostApiScreenState extends State<PostApiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('POST API CALL',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24, fontFamily: 'Times New Roman',),
              ),
              const SizedBox(height: 10,),
              const Text('Form Data & File Upload',
                style: TextStyle(color: Colors.white70, fontWeight: FontWeight.bold, fontSize: 20, fontFamily: 'Times New Roman',),
              ),
              const SizedBox(height: 80,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
                },
                child: const Card(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text('Scenario #1',
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18,),
                        ),
                        SizedBox(height: 5,),
                        Text('Sign Up using Post Api (Form Data)',
                          style: TextStyle(color: Colors.black87, fontWeight: FontWeight.normal, fontSize: 18,),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                        return UploadImageScreen();
                      }));
                },
                child: const Card(
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text('Scenario #2',
                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18,),
                        ),
                        SizedBox(height: 5,),
                        Text('Upload Image using Post Api',
                          style: TextStyle(color: Colors.black87, fontWeight: FontWeight.normal, fontSize: 18,),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }
}
