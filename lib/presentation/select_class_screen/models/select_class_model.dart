import 'package:get/get.dart';
import 'selectclass_item_model.dart';
import 'package:final_2/core/constants/constants.dart';
class SelectClassModel {
  RxList<SelectclassItemModel> selectclassItemList =
  RxList.generate(save, (index) => SelectclassItemModel());

}

