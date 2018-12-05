import 'package:flutter/material.dart';
import 'home.dart';
import 'signup.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Romansa Chat',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.pinkAccent
      ),
      home: MyHomePage(title: 'Romansa Chat'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _obscureText = true;
  var _iconVisibility = Icons.visibility;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
      if(_obscureText) {
        _iconVisibility = Icons.visibility;
      } else {
        _iconVisibility = Icons.visibility_off;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 24.0
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: TextFormField(
                  autofocus: true,
                  style: TextStyle(
                    // fontFamily: 'MyriadPro',
                    color: Colors.pink,
                  ),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Username',
                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.white)
                    ),
                    suffixIcon: Icon(Icons.person),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: TextFormField(
                  autofocus: false,
                  style: TextStyle(
                    // fontFamily: 'MyriadPro',
                    color: Colors.pink,
                  ),
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                    labelText: 'Kata Sandi',
                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(_iconVisibility),
                      onPressed: () {
                        _toggle();
                      },
                    ),
                  ),
                ),
              ),
              MaterialButton(
                color: Colors.pinkAccent,
                child: Text(
                  "MASUK",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: (){
                  Navigator.push(
                    context, 
                    MaterialPageRoute( 
                      builder: (BuildContext context) => Home(),
                    )
                  );
                },
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Belum punya akun?"),
                    ),
                    FlatButton(
                      child: Text(
                        "Buat Akun Baru",
                        style: TextStyle(
                          color: Colors.pink,
                        ),
                      ),
                      splashColor: Colors.pinkAccent,
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute( 
                            builder: (BuildContext context) => SignUp(),
                          )
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
