
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:taza_bazar/features/shop/model/ProductModel.dart';
import 'package:taza_bazar/utils/constants/api_constant/api_constant.dart';

class ProductApi {


  static Future<List<ProductModel>> fetchAllProduct() async {

    final  url = Uri.parse('${ApiConstant.baseUrl}/products');
    final response = await http.get(url,
    headers: {'content-type' : 'application/json'});

    if(response.statusCode == 200){
      List<dynamic> jsonData = jsonDecode(response.body);
      List<ProductModel> products = jsonData.map((product) => ProductModel.fromJson(product)).toList();
      print(products);
      return products;
    }else {
      print('error fetching product');
      return [];
    }
  }
}