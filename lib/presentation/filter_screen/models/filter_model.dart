import 'package:get/get.dart';import 'listimg_item_model.dart';import 'listbeds_item_model.dart';import 'package:riyadebnathdas_56313_s_application5/data/models/selectionPopupModel/selection_popup_model.dart';import 'chipviewhome_item_model.dart';import 'options2_item_model.dart';class FilterModel {Rx<List<ListimgItemModel>> listimgItemList = Rx(List.generate(2,(index) => ListimgItemModel()));

Rx<List<ListbedsItemModel>> listbedsItemList = Rx(List.generate(2,(index) => ListbedsItemModel()));

Rx<List<SelectionPopupModel>> dropdownItemList = Rx([SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)]);

Rx<List<SelectionPopupModel>> dropdownItemList1 = Rx([SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)]);

Rx<List<SelectionPopupModel>> dropdownItemList2 = Rx([SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)]);

Rx<List<SelectionPopupModel>> dropdownItemList3 = Rx([SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)]);

Rx<List<ChipviewhomeItemModel>> chipviewhomeItemList = Rx(List.generate(5,(index) =>ChipviewhomeItemModel()));

Rx<List<Options2ItemModel>> options2ItemList = Rx(List.generate(8,(index) =>Options2ItemModel()));

Rx<List<SelectionPopupModel>> dropdownItemList4 = Rx([SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)]);

 }
