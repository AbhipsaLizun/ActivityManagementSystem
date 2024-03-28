import 'package:get/get.dart';

class DashboardController extends GetxController{

  RxInt customTileExpanded = 0.obs;
  onExpansion(){
    if(customTileExpanded == 0){
    customTileExpanded.value = 1;
    }else{
      customTileExpanded.value = 0;
    }   
 }

}