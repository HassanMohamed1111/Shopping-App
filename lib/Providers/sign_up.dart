import 'package:flutter/material.dart';
import 'package:products_app/Models/Status.dart';
import 'package:products_app/Services/login.dart';

import '../Services/sign_up.dart';

class SignUpProvider extends ChangeNotifier
{
  StatusModel?statusModel;
  AddData( String password , String email , String phone , String username)async
  {
    try {
      statusModel = await SignUpService.addData(email, password ,phone , username);
      notifyListeners();
    }catch(e)
    {
      throw Exception("The Error is $e");
    }
  }
}