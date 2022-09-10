

import 'package:cloud_firestore/cloud_firestore.dart';

Future<String> getWtspNum()async{
  String wtspnum;

  final DocumentSnapshot docRf = await FirebaseFirestore.instance.collection('contact').doc('oGI4A5uKGlUrVdVKG5Nm').get();

  wtspnum = docRf['wtspnum'];
  return wtspnum;
}

Future<String> getNum1()async{
  String num1;

  final DocumentSnapshot docRf = await FirebaseFirestore.instance.collection('contact').doc('oGI4A5uKGlUrVdVKG5Nm').get();

  num1 = docRf['num1'];
  return num1;
}

Future<String> getNum2()async{
  String num2;

  final DocumentSnapshot docRf = await FirebaseFirestore.instance.collection('contact').doc('oGI4A5uKGlUrVdVKG5Nm').get();

  num2 = docRf['num2'];
  return num2;
}