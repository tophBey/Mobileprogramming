import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
  // _LoginState createState() => _LoginState();

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formkey = GlobalKey<FormState>();
  final _userNameCtrl = TextEditingController();
  final _passwordNameCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Login Admin",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: Form(
                    key: _formkey,
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.3,
                      child: Column(children: [
                          _userNameTextField(),
                          SizedBox(height: 20,),
                          _passwordTextField(),
                          SizedBox(height: 40,),
                          _tombolLogin(),
                      ]),
                    )),
              )
            ],
          ),
        )),
      ),
    );
  } //return

  Widget _userNameTextField() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Username"),
      controller: _userNameCtrl,
    );
  }

  Widget _passwordTextField() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Password"),
      obscureText: true,
      controller: _userNameCtrl,
    );
  }

  Widget _tombolLogin() {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(child: 
      Text("Login"),
      onPressed: (){

      },),
    
    );
  }
}
