import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_file_picker/form_builder_file_picker.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalKey<FormBuilderState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FormBuilder FilePicker Example"),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
      child: FormBuilder(
        key: _formKey,
        child: Column(
          children: <Widget>[
            FormBuilderFilePicker(
              attribute: "images",
              decoration: InputDecoration(labelText: "Attachments"),
              maxImages: 5,
            ),
          ],
        ),
      ),
      ),
    );
  }
}
