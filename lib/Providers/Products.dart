import 'package:flutter/cupertino.dart';
import 'package:products_app/Models/Products.dart';
import 'package:products_app/Services/Products.dart';

class ProductsProvider extends ChangeNotifier
{
  ProductsModel?productsModel;
  GetData()async
  {
    productsModel = await ProductsService.getData();
    notifyListeners();
  }
}