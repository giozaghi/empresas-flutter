
import 'package:empresas_flutter/routes/const_routes.dart';
import 'package:empresas_flutter/views/loading.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool obscure = true;
  double _height = 250.0;

  FocusNode _focusNode = FocusNode();
  FocusNode _focusNodepass = FocusNode();

  final _email = new TextEditingController();
  final _pass = new TextEditingController();
  bool _validateEmail = false;
  bool _validateSenha = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        setState(() {
          _height = 130.0;
        });
      } else {
        _height = 250.0;
      }
    });
    _focusNodepass.addListener(() {
      if (_focusNodepass.hasFocus) {
        setState(() {
          _height = 130.0;
        });
      } else {
        _height = 250.0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _body(context),
    );
  }

  _body(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Container(
            width: MediaQuery
                .of(context)
                .size
                .width,
            margin: EdgeInsets.only(bottom: 40),
            height: _height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.elliptical(360, 140),
              ),
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xff8527bb),
                  Color(0xffb22a76),
                  Color(0xffce9cb8),
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/logo_home_icon.png",
                  width: 40,
                  height: 32,
                ),
                _height >= 131 ? Padding(
                  padding: EdgeInsets.only(top: 16.42),
                  child: Text(
                    "Seja bem vindo ao empresas!",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xffffffff),
                    ),
                  ),
                ) : Container(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Column(
                children: [
                  TextField(
                    focusNode: _focusNode,
                    controller: _email,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: new OutlineInputBorder(
                        borderSide: new BorderSide(),
                      ),
                      labelText: 'Email',
                      hintText: 'Email',
                      errorText: _validateEmail ? 'Digite um email' : null,

                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    focusNode: _focusNodepass,
                    controller: _pass,
                    obscureText: obscure,
                    decoration: InputDecoration(
                      border: new OutlineInputBorder(
                        borderSide: new BorderSide(),
                      ),
                      suffixIcon: IconButton(
                          alignment: Alignment.bottomLeft,
                          icon: Icon(Icons.remove_red_eye),
                          onPressed: () {
                            setState(() {
                              obscure == true ? obscure = false : obscure =
                              true;
                            });
                          }),
                      labelText: 'Senha',
                      hintText: 'Senha',
                      errorText: _validateSenha ? 'Digite uma senha' : null,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    child: Container(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width / 1.2,
                      child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.white)),
                          textColor: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(13.0),
                            child: Text('ENTRAR',
                              style: TextStyle(fontSize: 20),),
                          ),
                          color: Color.fromRGBO(224, 30, 105, 88),
                          onPressed: () {
                            _login();
                          }
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  void _showDialog() {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return LoadingCircular();
        });
  }


  void _login() async {
    bool isValidate = true;
    try{

      if (_email.text.isEmpty) {
        setState(() {
          isValidate = false;
          _email.text.isEmpty
              ? _validateEmail = true
              : _validateEmail = false;
          _pass.text.isEmpty
              ? _validateSenha = true
              : _validateSenha = false;
        });
      } else if (_pass.text.isEmpty) {
        setState(() {
          isValidate = false;
          _pass.text.isEmpty
              ? _validateSenha = true
              : _validateSenha = false;
          _email.text.isEmpty
              ? _validateEmail = true
              : _validateEmail = false;
        });
      }
      isValidate == true ? _showDialog() : Container();
      isValidate == true ? Navigator.of(context).pushNamed(HomeViewRoute) : AlertDialog(title: Text('Digite os campos corretamente !'),);
    }catch(e){}



  }
}
