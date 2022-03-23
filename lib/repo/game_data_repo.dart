import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:game/models/data_model.dart';
import 'package:http/http.dart' as http;

class GameRepositry {
  Future<List<DataModel>?> getGamesData() async {
    String url =dotenv.env['BASE_URL'] as String;
    final result = await http.Client().get(Uri.parse(url));
    if (result.statusCode!= 200){
      return null;
    }else{
      Iterable models = jsonDecode(result.body);
      List<DataModel> dataModels=[];
      for(var model in models){
        DataModel dataModel = DataModel.fromJson(model);
        dataModels.add(dataModel);
      }
      return dataModels;
    }
  }
}
