import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('TextFormField Example'),
        ),
        body: MyForm(),
      ),
    );
  }
}

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  TextEditingController _textEditingController = TextEditingController();
  String _textFieldValue = '';

  @override
  void initState() {
    super.initState();
    // Optional: set initial value for the text field
    _textFieldValue = 'Initial Value';
    _textEditingController.text = _textFieldValue;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextFormField(
            controller: _textEditingController,
            onChanged: (value) {
              setState(() {
                _textFieldValue = value;
              });
            },
            decoration: InputDecoration(
              labelText: 'Enter Text',
            ),
          ),
          SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {
              // Do something with the text field value
              print('Text field value: $_textFieldValue');
            },
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    // Dispose the TextEditingController when it's no longer needed
    _textEditingController.dispose();
    super.dispose();
  }
}
