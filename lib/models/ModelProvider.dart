// ignore_for_file: public_member_api_docs, file_names, unnecessary_new, prefer_if_null_operators, prefer_const_constructors, slash_for_doc_comments, annotate_overrides, non_constant_identifier_names, unnecessary_string_interpolations, prefer_adjacent_string_concatenation, unnecessary_const, dead_code

import 'package:amplify_datastore_plugin_interface/amplify_datastore_plugin_interface.dart';
import 'Todo.dart';

export 'Todo.dart';

class ModelProvider implements ModelProviderInterface {
  @override
  String version = "671e864603609644a01cbf06dd6096dc";
  @override
  List<ModelSchema> modelSchemas = [Todo.schema];
  static final ModelProvider _instance = ModelProvider();
  @override
  List<ModelSchema> customTypeSchemas = [];

  static ModelProvider get instance => _instance;
  
  ModelType getModelTypeByModelName(String modelName) {
    switch(modelName) {
      case "Todo":
        return Todo.classType;
      default:
        throw Exception("Failed to find model in model provider for model name: " + modelName);
    }
  }
}