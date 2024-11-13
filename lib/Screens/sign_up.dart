import 'package:flutter/material.dart';
import 'package:products_app/Providers/sign_up.dart';
import 'package:products_app/Screens/Login.dart';
import 'package:products_app/Screens/products.dart';
import 'package:products_app/Widget/text_form.dart';
import 'package:provider/provider.dart';

class SignUpScreen extends StatelessWidget {
  TextEditingController username = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  var formKey = GlobalKey<FormState>();
  // SignUpScreen({required this.name , required this.image});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Register"),
        ),
        body: Consumer<SignUpProvider>(
          builder: (context, value, child) {
            return Form(
              key: formKey,
              child: Column(
                children: [
                  SizedBox(height: 70,),
                  CustomeTextForm(controler: username , hintText: "User Name", icon: Icon(Icons.supervised_user_circle),),
                  SizedBox(height: 20,),
                  CustomeTextForm(controler: phone, hintText: "Phone" , icon:Icon(Icons.phone),),
                  SizedBox(height: 20,),
                  CustomeTextForm( controler: email , hintText: "Email",icon: Icon(Icons.email),),
                  SizedBox(height: 20,),
                  CustomeTextForm( controler: password, hintText: "Password" , icon:Icon(Icons.password) ,),
                  SizedBox(height: 20,),
                  ElevatedButton (onPressed: (){
                    value.AddData(username.text, password.text, phone.text, email.text);
                    var status = value.statusModel;
                    if(status == true)
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                    }
                    else
                      {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Error"),
                          ),
                        );
                      }
                  }, child: Text("Sign Up"),),

                  TextButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ProductsScreen(),));
                  }, child: Text("Home Page")),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
