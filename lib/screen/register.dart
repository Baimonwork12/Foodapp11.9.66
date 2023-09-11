import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

enum user { customer, shop }

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final formKey = GlobalKey<FormState>();
  user? _character = user.customer;

  CollectionReference collectionUser =
      FirebaseFirestore.instance.collection("user");

  sendUserDataToDB() async {
    if (formKey.currentState!.validate()) {
      return collectionUser
          .doc()
          .set({'name': email.text, 'lastname': password.text});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('สมัครสมาชิก'),
        ),
        body: Form(
            key: formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: email,
                  decoration: const InputDecoration(
                      labelText: 'อีเมลล์', hintText: 'อีเมลล์'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return ' กรุณากรอกอีเมลล์';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: password,
                  decoration: const InputDecoration(
                      hintText: 'รหัสผ่าน', labelText: 'รหัสผ่าน'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return ' กรุณากรอกรหัสผ่าน';
                    }
                    return null;
                  },
                ),
                Text('กรุณาเลือก1อย่าง'),
                SizedBox(
                  child: RadioListTile(
                    title: Text('ลูกค้า'),
                  value: user.customer, 
                  groupValue: _character,
                   onChanged: (user? value){
                    setState(() {
                      _character =value ;
                    });
                   }),
                ),
                 const Divider(height: 10,),
                 RadioListTile(
                  title: Text('ร้านค้า'),
                value: user.customer, 
                groupValue: _character,
                 onChanged: (user? value){
                  setState(() {
                    _character =value ;
                  });
                 }),
                OutlinedButton(
                    onPressed: () {
                      sendUserDataToDB();
                    },
                    child: Text('ลงทะเบียน'))
              ],
            )));
  }
}
