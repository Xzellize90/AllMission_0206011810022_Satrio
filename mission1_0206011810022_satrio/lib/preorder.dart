import 'package:flutter/material.dart';
import 'package:mission1_0206011810022_satrio/home.dart';

class po extends StatefulWidget {

  @override
  _poState createState() => _poState();
}

class _poState extends State<po> {

  var nama;
  var email;
  var nicname;
  var telfon;

  final namaCon = new TextEditingController();
  final emailCon = new TextEditingController();
  final nicnameCon = new TextEditingController();
  final telfonCon = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pre Order"),
      ),
      body: Container(
        child: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
            Flexible(
               flex: 3,
                child:Container(
                  margin: EdgeInsets.only(left:20, right:20, top:5),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        controller: namaCon,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          suffix: Container(
                          width: 5,
                          height: 5,
                          color: Colors.red,
                          ),
                            prefixIcon: Icon(Icons.person),
                            prefixText: "Nama :",
                            prefixStyle: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.w600
                          ),
                        labelText: "Nama Lengkap",
                        hintStyle: TextStyle(fontSize: 12),
                        border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                        ),
                        ),
                       ),
                      ]
                    ),
                  ),
                  ),
            Flexible(
               flex: 3,
                child:Container(
                  margin: EdgeInsets.only(left:20, right:20, top:5),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        controller: emailCon,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          suffix: Container(
                          width: 5,
                          height: 5,
                          color: Colors.red,
                          ),
                            prefixIcon: Icon(Icons.mail),
                            prefixText: "Email :",
                            prefixStyle: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.w600
                          ),
                        labelText: "telfon Email",
                        hintStyle: TextStyle(fontSize: 12),
                        border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                        ),
                        ),
                       ),
                      ]
                    ),
                  ),
                  ),
            Flexible(
               flex: 3,
                child:Container(
                  margin: EdgeInsets.only(left:20, right:20, top:5),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        controller: nicnameCon,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          suffix: Container(width: 5,height: 5,
                          color: Colors.red,
                          ),
                            prefixIcon: Icon(Icons.person),
                            prefixText: "NickName :",
                            prefixStyle: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.w600
                          ),
                        labelText: "Steam Account",
                        hintStyle: TextStyle(fontSize: 12),
                        border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                        ),
                        ),
                       ),
                      ]
                    ),
                  ),
                  ),
            Flexible(
               flex: 3,
                child:Container(
                  margin: EdgeInsets.only(left:20, right:20, top:5),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        controller: telfonCon,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          suffix: Container(
                          width: 5,
                          height: 5,
                          color: Colors.red,
                          ),
                            prefixIcon: Icon(Icons.phone),
                            prefixText: "Telfon :",
                            prefixStyle: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.w600
                          ),
                        labelText: "Nomor Telfon",
                        hintStyle: TextStyle(fontSize: 12),
                        border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                        ),
                        ),
                       ),
                      ]
                    ),
                  ),
                ),
                Flexible(
                  flex: 3,
                  child: Container(
                    margin: EdgeInsets.only(top: 10),
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(50)),
                      child: Text("Pre Order",style: TextStyle(color: Colors.grey)),
                      color: Colors.yellowAccent,
                      onPressed: (){
                        setState(() {
                          nama = namaCon.text;
                          email = emailCon.text;
                          nicname = nicnameCon.text;
                          telfon = telfonCon.text;
                        });
                        if(nama != "" && email != "" && nicname != "" && telfon != ""){
                          return showDialog(
                            context: context,
                            builder: (context) {
                              return Dialog(
                                child: Stack(
                                  alignment: Alignment.center,
                                  overflow: Overflow.visible,
                                  children: <Widget>[
                                     Container(
                                  height: 200,
                                  width: 190,
                                    child: Column(
                                      children: <Widget>[
                                        SizedBox(height: 20,),
                                        new Text("PO Success", textAlign: TextAlign.center, style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                                        new Text("Selamat $nama",style: TextStyle(fontSize: 14), textAlign: TextAlign.left,),
                                        new Text("Email: $email",style: TextStyle(fontSize: 14), textAlign: TextAlign.left,),
                                        new Text("NickName Steam: $nicname",style: TextStyle(fontSize: 14), textAlign: TextAlign.left,),
                                        new Text("telfon: $telfon",style: TextStyle(fontSize: 14), textAlign: TextAlign.left,),
                                        Container(
                                          alignment: Alignment.bottomCenter,
                                          child: FlatButton(
                                              onPressed: () {
                                                Navigator.push(context,
                                                    MaterialPageRoute(
                                                        builder: (context) {
                                                  return Home();
                                                }));
                                              },  
                                              child: Text("Next",style: TextStyle(color: Colors.green),)),
                                        )
                                      ],
                                    ),
                                  
                                )
                                  ]
                                ),
                              );
                            }
                          );
                        }
                        return showDialog(
                            context: context,
                            builder: (context) {
                              return Dialog(
                                child: Stack(
                                  alignment: Alignment.center,
                                  overflow: Overflow.visible,
                                  children: <Widget>[
                                     Container(
                                  height: 200,
                                  width: 190,
                                    child: Column(
                                      children: <Widget>[
                                        SizedBox(height: 20,),
                                        new Text("Eror!", textAlign: TextAlign.center, style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.yellow),),
                                        new Text("All Field Must Be Filled",style: TextStyle(fontSize: 20,color: Colors.red), textAlign: TextAlign.center,),
                                        Container(
                                          alignment: Alignment.bottomCenter,
                                          child: FlatButton(
                                              onPressed: () {
                                                Navigator.pop(context,
                                                    MaterialPageRoute(
                                                        builder: (context) {
                                                  return Home();
                                                }));
                                              },  
                                              child: Text("Close",style: TextStyle(color: Colors.green),)),
                                        )
                                      ],
                                    ),
                                  
                                )
                                  ]
                                ),
                              );
                            }
                          );
                      }
                    ),
                  )
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}