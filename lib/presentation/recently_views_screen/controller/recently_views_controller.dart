import 'package:real_estate/core/app_export.dart';import 'package:real_estate/presentation/recently_views_screen/models/recently_views_model.dart';class RecentlyViewsController extends GetxController {Rx<RecentlyViewsModel> recentlyViewsModelObj = RecentlyViewsModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
