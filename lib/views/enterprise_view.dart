import 'package:flutter/material.dart';

class EnterpriseView extends StatefulWidget {
  final String name;
  final String description;

  EnterpriseView({Key key, this.name, this.description}) : super(key: key);

  @override
  _EnterpriseViewState createState() => _EnterpriseViewState();
}

class _EnterpriseViewState extends State<EnterpriseView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          widget.name,
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Container(
            margin: EdgeInsets.all(5),
            width: 40,
            height: 40,
            color: Color(0xffF5F5F5),
            child: Center(
              child: Icon(
                Icons.arrow_back,
                color: Color(0xffE01E69),
                size: 30,
              ),
            ),
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 10),
        child: Text(
          widget.description,
          style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w300),
        ),
      ),
    );
  }
}
