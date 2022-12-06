import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Latihan Gridview',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: GridViewPage(),
    );
  }
}

class GridViewPage extends StatefulWidget {
  const GridViewPage({Key? key}) : super(key: key);

  @override
  State<GridViewPage> createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  var jumlah;
  @override
  void initState() {
    // TODO: implement initState
    jumlah = 10;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Latihan Gridview'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          for(int i=1; i<=jumlah; i++)...[
            GestureDetector(
              onTap: (){
                print('Gambar yang dipilih adalah gambar nomor: ${i}');
              },
              child: Container(
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Image(
                      image: AssetImage('assets/images/Logo.jpg'),
                      fit: BoxFit.fill,
                      height: 200,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text("Sudah diklik sebanyak: ",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          
        },    
      ),
    );
  }
}