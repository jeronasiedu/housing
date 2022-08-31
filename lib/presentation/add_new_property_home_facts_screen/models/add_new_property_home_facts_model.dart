import 'package:get/get.dart';import 'package:housing/data/models/selectionPopupModel/selection_popup_model.dart';import 'listfinishedsqft_item_model.dart';class AddNewPropertyHomeFactsModel {RxList<SelectionPopupModel> dropdownItemList = [SelectionPopupModel(id:1,title:"test",isSelected:true,),SelectionPopupModel(id:2,title:"test1",),SelectionPopupModel(id:3,title:"test2",)].obs;

RxList<ListfinishedsqftItemModel> listfinishedsqftItemList = RxList.filled(3,ListfinishedsqftItemModel());

 }
