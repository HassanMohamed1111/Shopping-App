import 'package:flutter/material.dart';
import 'package:products_app/Providers/login.dart';
import 'package:products_app/Providers/sign_up.dart';
import 'package:products_app/Screens/products.dart';
import 'package:products_app/Screens/sign_up.dart';
import 'package:products_app/Widget/text_form.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController username = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  // String name;
  // String image;
  // LoginScreen({required this.name , required this.image});
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Login"),
        ),
        body: Consumer<LoginProvider>(
          builder: (context, value, child) {
            return Form(
              key: formKey,
              child: Column(
                children: [
                  SizedBox(height: 70,),
                  CustomeTextForm( controler: email , hintText: "Email",icon: Icon(Icons.email),),
                  SizedBox(height: 20,),
                  CustomeTextForm( controler: password, hintText: "Password" , icon:Icon(Icons.password) ,),
                  SizedBox(height: 20,),
                  ElevatedButton (onPressed: (){

                    value.AddData(password.text, email.text);
                  }, child: Text("Sign Up"),),

                  TextButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ProductsScreen(),));
                  }, child: Text("Home Page")),

                  TextButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen(),));
                  }, child: Text("Sign Up")),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
