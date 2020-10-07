import 'package:flutter/material.dart';
import 'package:mission1_0206011810022_satrio/preorder.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>with SingleTickerProviderStateMixin {
  
  bool _hasBeenPressed = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Mission 1"),
        ),
        body: Container(
          child: Stack(
            children: <Widget>[
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Colors.black26, Colors.black87]
                )
              ),
            ),
          Column(
            children: <Widget>[
              Flexible(
              flex: 10,
              child: Container(
                width: 500,
                  height: 400,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/main.png"),
                      fit: BoxFit.fill
                    )
                  ),
            )),Flexible(
              flex: 5,
              child: Container(
                width: 412,
                height: 250,
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: 90,
                            height: 90,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("images/image1.png"),
                                fit: BoxFit.fill
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            margin: EdgeInsets.fromLTRB(7.5, 0, 5, 7.5),
                          ),
                          Container(
                            width: 90,
                            height: 90,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("images/image2.jpg"),
                                fit: BoxFit.fill
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            margin: EdgeInsets.fromLTRB(7.5, 0, 5, 7.5),
                          ),
                          Container(
                            width: 90,
                            height: 90,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("images/image3.jpg"),
                                fit: BoxFit.fill
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            margin: EdgeInsets.fromLTRB(7.5, 0, 5, 7.5),
                          ),
                          Container(
                            width: 90,
                            height: 90,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("images/image4.jpg"),
                                fit: BoxFit.fill
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            margin: EdgeInsets.fromLTRB(7.5, 0, 5, 7.5),
                          ),
                        ],
                      ),
            )),Flexible(
              flex: 2,
              child: Container(
                width: 412,
                  height:40,
                  child: ListView(
                    children: <Widget>[
                      Text(
                    "Cyberpunk 2077",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                    ],
                  ),
            )),
            Flexible(
              flex: 11,
              child: ListView(
                children: <Widget>[
                  Text(
                    "        Cyberpunk 2077 adalah game yang paling di tunggu tunggu oleh gamer di seluruh dunia, game ini bertema futuristik open world dengan fitur no loading, di tambah dengan kehadiran kehadiran keanu reeves membuan para ganer dan fans keanu reeves tidak sabar untuk memainkan game ini, game ini di rencakan akan keluar pada november 2020 setelah di delay sebanyak 3 kali, spec req game ini pun termasuk rendah di kelasnya, game ini sekrang sudah dapat di pre-order di steam, GOC, amazone, dan epic games",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    " ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    "        Cyberpunk 2077 mulai diumumkan pada tahun 2017, mulai dari 2017 hingga 2020 cyberpunk di develop dan cd project red (developer cyberpunk 2077 dan the witcher menemukan banyak eror di game tersebut sehingga, dilakukan revisi dan perbaikan hingga delay sebanyak 3 kali dari tanggal release yang sudah di tetapkan",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
              ),
              //disini bisa flotaing button, pakai container 
            ],
          ),
          Container(
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(top: 12, right: 10),
            child: FloatingActionButton(
                child: Icon(Icons.favorite,
                  color: _hasBeenPressed? Colors.red : Colors.grey,
                ),
                backgroundColor: Colors.white,
                onPressed: () {setState(() {
                  _hasBeenPressed = !_hasBeenPressed;
                });}),
            ),
            Container(
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(bottom: 25),
              child: FlatButton(
                color: Colors.transparent,
                  child: Container(
              decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                gradient: LinearGradient(
                  colors: <Color>[
                    Colors.yellowAccent,
                    Colors.deepOrangeAccent
                  ],
                ),
              ),
              padding:  EdgeInsets.all(10.0),
              child:
                   Text('Pre Order', style: TextStyle(fontSize: 20)),
            ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return po();
                    }));
                  }),
            ),
          ],
          ),
        ),
      ),
    );
  }
}