
import 'package:flutter/material.dart';

void main(
){
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Weather',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.settings),
            ),
          ],
        ),
        body: _BuildBody(),
      ),
    );
  }
}

Widget _BuildBody() {
  return SingleChildScrollView(
    child: Column(
      children: <Widget>[
        _headerImage(),
        SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                _weatherDescription(),
                Divider(),
                _temperature(),
                Divider(),
                _temperatureForecast(),
                Divider(),
                _temperatureRating(),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}


Image _headerImage() {
 
  return Image(
    image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/2/29/%D0%9E%D0%BA%D0%B6%D0%B5%D1%82%D0%BF%D0%B5%D1%81_%D0%91%D0%BE%D1%80%D0%BE%D0%B2%D0%BE%D0%B5.jpg"),
    fit: BoxFit.cover,
  );
}

Widget _weatherDescription(){
  return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text('Tuesday - May 22', style:
        TextStyle(fontSize: 32, fontWeight: FontWeight.bold ),),
        Divider(),
        Text('Integer ultricies diam non tincidunt sagittis. Sed tristique nisl a purus feugiat, eget hendrerit libero varius. Vivamus a dui nec nisi vehicula gravida. Duis eget ultr',
        style: TextStyle(color: Colors.black54),),
      ],
    );
}
Row _temperature(){
  return  Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children:<Widget> [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:<Widget> [
          Icon(Icons.wb_sunny,
            color: Colors.yellow,),
        ],
  ),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:<Widget> [
              Row(
                children:<Widget> [
                  Text('15 Clear', style: TextStyle(
                      color: Colors.deepPurple
                  ),)
                ],
              ),
              Row(
                children:<Widget> [
                  Text('Murmanskaya oblast, Murmansk', style: TextStyle(
                      color: Colors.grey
                  ),)
                ],
              )
            ],
          )
    ],
  );
}
Wrap _temperatureForecast() {
  return Wrap(
    spacing: 10,
    children: List.generate(8, (int index) {
      return Chip(
        label: Text(
          '${index + 20}C',
          style: TextStyle(fontSize: 15),
        ),
        avatar: Icon(
            Icons.wb_cloudy,
          color: Colors.blueAccent,),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
          side: BorderSide(color: Colors.grey),
        ),
        backgroundColor: Colors.grey.shade100 ,
      );
    }),
  );
}
Row _temperatureRating() {
  Row stars = Row(
    children: <Widget>[
      Icon(Icons.star, size: 15, color: Colors.yellow),
      Icon(Icons.star, size: 15, color: Colors.yellow),
      Icon(Icons.star, size: 15, color: Colors.yellow),
      Icon(Icons.star, size: 15, color: Colors.black),
      Icon(Icons.star, size: 15, color: Colors.black),
    ],
  );

  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: <Widget>[
      Text(
        "Info with openweathermap.org",
        style: TextStyle(fontSize: 15),
      ),
      stars,
    ],
  );
}


