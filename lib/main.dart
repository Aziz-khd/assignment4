// ignore: unnecessary_import
// ignore_for_file: prefer_const_constructors, duplicate_ignore, avoid_unnecessary_containers

// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: duplicate_ignore, duplicate_ignore
void main() {
  // ignore: prefer_const_constructors
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool flutterCourse = false;
  bool reactCourse = false;
  Image imooge =
      Image(image: NetworkImage("https://pixabay.com/images/id-1283624/"));

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
            child: Column(
          children: [
            Text(
              "Please selecet you Course!",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.purple,
                  fontWeight: FontWeight.bold),
            ),
            Divider(height: 35),
            CheckboxListTile(
                secondary: Icon(
                  Icons.book,
                  color: Colors.amber,
                ),
                subtitle: Text("based on dart programming",
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 20,
                        color: Colors.green[700])),
                title: Text(
                  "Flutter",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
                value: flutterCourse,
                onChanged: ((val) {
                  setState(() {
                    flutterCourse = val!;
                    imooge = Image(
                        image: NetworkImage(
                            "https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.swtestacademy.com%2Fwp-content%2Fuploads%2F2022%2F06%2Fflutter.webp&imgrefurl=https%3A%2F%2Fwww.swtestacademy.com%2Flistening-http-requests-of-flutter-applications%2F&tbnid=yMm2OtoXqBAN9M&vet=12ahUKEwicwO7C-v_5AhUDUBoKHVzcDlkQMygEegUIARDPAQ..i&docid=bVZLNXdgiEHYQM&w=1124&h=533&q=flutter%20logo&ved=2ahUKEwicwO7C-v_5AhUDUBoKHVzcDlkQMygEegUIARDPAQ"));
                  });
                })),
            CheckboxListTile(
                secondary: Icon(
                  Icons.book,
                  color: Colors.amber,
                ),
                subtitle: Text(
                  "based on dart programming",
                  style: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      color: Colors.green[700]),
                ),
                title: Text(
                  "React",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
                value: reactCourse,
                onChanged: ((val) {
                  setState(() {
                    reactCourse = val!;
                    imooge = Image(
                        image: NetworkImage(
                            "https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.datocms-assets.com%2F14946%2F1638186862-reactjs.png%3Fauto%3Dformat%26w%3D1000&imgrefurl=https%3A%2F%2Fwww.ironhack.com%2Fen%2Fweb-development%2Fwhat-is-react-js&tbnid=wRZPWv1ohQX3IM&vet=12ahUKEwj2g9XU-v_5AhUKWxoKHQ5-DVkQMygQegUIARDaAQ..i&docid=8RZbwPDCzoeVkM&w=1000&h=420&q=react%20logo&ved=2ahUKEwj2g9XU-v_5AhUKWxoKHQ5-DVkQMygQegUIARDaAQ"));
                  });
                })),
            Divider(
              height: 50,
            ),
          ],
        )),
      ),
    );
  }
}
