import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AddData extends StatefulWidget {
  const AddData({super.key});

  @override
  State<AddData> createState() => _AddDataState();
}

class _AddDataState extends State<AddData> {

  TextEditingController name = TextEditingController();
  TextEditingController lastname = TextEditingController();
  final formKey = GlobalKey<FormState>();

   CollectionReference collectionUser =
      FirebaseFirestore.instance.collection("user");

  sendUserDataToDB() async {
    if(formKey.currentState!.validate()){
       return collectionUser.doc().set({
'name':name.text,
'lastname': lastname.text

       });
    }
    
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: Column(
        children: [
          TextFormField(controller: name,
          decoration: const InputDecoration(
            labelText: 'name',
            hintText: 'name'
            
          ),validator: (value) {
            if(value == null || value.isEmpty){
              return ' กรุณากรอกชื่อ';
            }return null;
          },),
          TextFormField(
            controller: lastname,
            decoration: const InputDecoration(
              hintText: 'นามสกุล',
              labelText: 'นามสกุล'
            ),
            validator: (value) {
            if(value == null || value.isEmpty){
              return ' กรุณากรอกนามสกุล';
            }return null;
          },
          )
          ,OutlinedButton(onPressed: (){
            sendUserDataToDB();
          }, child: const Text('save'))
        ],
      ))
      
    );
  }
}