import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController _controllerSearchForm = TextEditingController();


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: true,
      resizeToAvoidBottomPadding: true,
      body: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: Container(
          child: Column(
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
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
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                height: 48,
                decoration: BoxDecoration(
                  color: Color(0xffF5F5F5),
                  borderRadius: new BorderRadius.all(new Radius.circular(5.0)),
                ),
                child: TextFormField(
                  controller: _controllerSearchForm,
                  onChanged: (value) {

                  },
                  style: TextStyle(color: Color(0xff666666), fontSize: 18),
                  decoration: InputDecoration(
                      hintText: "Pesquisa por empresa",
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color(0xff666666),
                        size: 30,
                      ),
                      hintStyle: TextStyle(
                        color: Color(0xff666666),
                        fontSize: 18,
                      ),
                      border: InputBorder.none),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
