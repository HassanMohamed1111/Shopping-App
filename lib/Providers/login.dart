import 'package:flutter/material.dart';
import 'package:products_app/Models/Status.dart';
import 'package:products_app/Services/login.dart';

import '../Services/sign_up.dart';

class LoginProvider extends ChangeNotifier
{
  StatusModel?statusModel;
  Future<bool>AddData( String password , String email)async
  {
    try {
     statusModel = await SignInService.addData(email, password);
      notifyListeners();
      return true;
    }catch(e)
    {
      throw Exception("The Error is $e");
    }
  }
}