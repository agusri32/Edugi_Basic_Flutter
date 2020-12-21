import 'package:flutter/material.dart';
import 'package:edugi_general_flutter/page_home.dart';

class LoginUser extends StatefulWidget {
  LoginUserState createState() => LoginUserState();
}

class LoginUserState extends State {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  String myUsername, myPassword;

  //tambahkan form
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Login'),
        backgroundColor: Colors.orange,
      ),

      body: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            TextFormField(
              //cek data field nya kosong
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please Input Username';
                }
                return null;
              },
              controller: usernameController,
              decoration: InputDecoration(
                hintText: 'Input Username',
              ),
            ),

            TextFormField(
              //cek data field nya kosong
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please Input Password';
                }
                return null;
              },
              maxLength: 16,
              maxLengthEnforced: true,
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Input Password',
              ),
            ),

            SizedBox(
              height: 25.0,
            ),

            MaterialButton(
              minWidth: 85.0,
              height: 50.0,
              color: Colors.green,
              textColor: Colors.white,
              onPressed: () {

                //ngambil value dari widget textfield
                myUsername = usernameController.text;
                myPassword = passwordController.text;

                if (_formKey.currentState.validate()) {

                  //pengecekan username & password
                  if(myUsername == 'kangagus' && myPassword == 'bismillah')
                  {

                    //berhasil login
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            //variable yang di pass ke page home
                            builder: (context) => PageHome(
                              nama: myUsername,
                              password: myPassword,
                            )
                        )
                    );

                  }else{
                    print("Username atau Password Anda Salah!");
                  }

                }
              },

              child: Text('Submit'),
            )

          ],
        ),
      ),

    );
  }
}