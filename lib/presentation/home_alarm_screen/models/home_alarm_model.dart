import 'package:get/get.dart';import 'package:housing/data/models/selectionPopupModel/selection_popup_model.dart';import 'listimg1_item_model.dart';class HomeAlarmModel {RxList<SelectionPopupModel> dropdownItemList = [SelectionPopupModel(id:1,title:"test",isSelected:true,),SelectionPopupModel(id:2,title:"test1",),SelectionPopupModel(id:3,title:"test2",)].obs;

RxList<Listimg1ItemModel> listimg1ItemList = RxList.filled(2,Listimg1ItemModel());

 }
