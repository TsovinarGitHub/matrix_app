import 'package:flutter/material.dart';
import 'matrix_view/add_remove_button.dart';
import 'matrix_view/matrix_create_model.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dynamic TextFormFields',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MatrixView(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MatrixView extends StatefulWidget {
  @override
  MatrixViewState createState() => MatrixViewState();
}

class MatrixViewState extends State<MatrixView> {

  final _formKey = GlobalKey<FormState>();
  TextEditingController _numberController;
  static List<dynamic> matrixRowElemetnList = [0];
  static List<dynamic> matrixColumnElemetnList = [];

  @override
  void initState() {
    _numberController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _numberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
            children: [
                Container(
                      width: 50,
                      child: TextFormField(
                       controller: _numberController,
                        textAlign: TextAlign.center,
                        // onChanged: (v) => _MyFormState.friendsList[widget.index] = v,
                        decoration: InputDecoration(
                        hintText: '0'
                        ),
                        validator: (number){
                      if(number.trim().isEmpty) return 'Please enter Matrix number';
                      return null;
                    },
                  ),
               ),
                SizedBox(height: 20,),
                ...AddMatrixRow(matrixRowElemetnList),


              RowAddButton(matrixRowElemetnList),
              RowRemoveButton(matrixRowElemetnList , matrixRowElemetnList.length-1),
              ColumnAddButton(matrixColumnElemetnList),
              ColumnRemoveButton(matrixColumnElemetnList , matrixColumnElemetnList.length-1),

              Column(
                children: [
                  ...AddMatrixColumn(matrixRowElemetnList),
                ],
              ),
              FloatingActionButton(
                onPressed: (){
                  if(_formKey.currentState.validate()){
                   // print(_nameController);
                    _formKey.currentState.save();
                  }
                },
                child: Text('Submit'),
                //color: Colors.green,
              ),
            ],
            )
            ]
          )
      ),
      )
    );
  }
}

