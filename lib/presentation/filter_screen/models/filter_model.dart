import 'package:get/get.dart';import 'listimg4_item_model.dart';import 'listbeds_item_model.dart';import 'package:housing/data/models/selectionPopupModel/selection_popup_model.dart';import 'listfreewifi1_item_model.dart';class FilterModel {RxList<Listimg4ItemModel> listimg4ItemList = RxList.filled(2,Listimg4ItemModel());

RxList<ListbedsItemModel> listbedsItemList = RxList.filled(2,ListbedsItemModel());

RxList<SelectionPopupModel> dropdownItemList = [SelectionPopupModel(id:1,title:"test",isSelected:true,),SelectionPopupModel(id:2,title:"test1",),SelectionPopupModel(id:3,title:"test2",)].obs;

RxList<SelectionPopupModel> dropdownItemList1 = [SelectionPopupModel(id:1,title:"test",isSelected:true,),SelectionPopupModel(id:2,title:"test1",),SelectionPopupModel(id:3,title:"test2",)].obs;

RxList<SelectionPopupModel> dropdownItemList2 = [SelectionPopupModel(id:1,title:"test",isSelected:true,),SelectionPopupModel(id:2,title:"test1",),SelectionPopupModel(id:3,title:"test2",)].obs;

RxList<SelectionPopupModel> dropdownItemList3 = [SelectionPopupModel(id:1,title:"test",isSelected:true,),SelectionPopupModel(id:2,title:"test1",),SelectionPopupModel(id:3,title:"test2",)].obs;

RxList<Listfreewifi1ItemModel> listfreewifi1ItemList = RxList.filled(2,Listfreewifi1ItemModel());

RxList<SelectionPopupModel> dropdownItemList4 = [SelectionPopupModel(id:1,title:"test",isSelected:true,),SelectionPopupModel(id:2,title:"test1",),SelectionPopupModel(id:3,title:"test2",)].obs;

 }
