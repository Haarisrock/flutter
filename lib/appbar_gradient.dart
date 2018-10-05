import 'package:imgbb/profile_page.dart';
import "package:flutter/material.dart";

class Page extends StatefulWidget {
  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<Page> {

  final nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return new Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          Image(
            image: AssetImage('assets/logo.png'),
            height: 200.0,
          ),
          SizedBox(height: 20.0,),

          Stack(
            children: <Widget>[
              Card(
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                  child: Container(
                      child: Column(
                        children: <Widget>[
                          TextField(
                            controller: nameController,
                            decoration: InputDecoration(
                              hintText: "Username",
                              icon: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.drafts,color: Colors.black,),
                              ),
                              /* icon: const Padding(
                                        padding: const EdgeInsets.only(top: 15.0),
                                        child: const Icon(Icons.drafts,color: Colors.black,),
                                      ),*/
                              filled: true,
                              fillColor: Colors.white,
//                                  contentPadding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0)
                            ),
                          ),
                          SizedBox(height: 8.0,),
                          TextField(
                            controller: nameController,
                            decoration: InputDecoration(
                              hintText: "Password",
                              /* icon: const Padding(
                                    padding: const EdgeInsets.only(top: 15.0),
                                    child: const Icon(Icons.lock,color: Colors.black,),
                                  ),*/
                              icon: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.lock,color: Colors.black,),
                              ),
                              filled: true,
                              fillColor: Colors.white,
//                                  contentPadding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0)
                            ),
                          ),

                        ],
                      ),

                      constraints: BoxConstraints(
                          maxHeight: 150.0,
                          maxWidth: 300.0,
                          minWidth: 150.0,
                          minHeight: 150.0
                      )
                  )
              ),
              Positioned(
                top: 100.0,
                left:30.0,
                child: RaisedButton(
                  padding: EdgeInsets.symmetric(horizontal: 100.0),
                  color: Colors.lightBlueAccent,
                  child: new Text("Proceed"),
//                        color: Colors.orange,
                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => Profile( userFullName :nameController.text)));
                    print(nameController.text);
                  },
                ),
              )
            ],
          )
        ],


      ),
      decoration: new BoxDecoration(
        gradient: new LinearGradient(
            colors:[Colors.blue,Colors.blueAccent],
            begin: const FractionalOffset(1.0, 1.0),
            end: const FractionalOffset(0.5, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),

      ),
    );
  }
}