import 'package:flutter/widgets.dart';
import 'package:com.foxtcon.foxtconapp/enums/view_state.dart';

class BaseModel extends ChangeNotifier {
  ViewState _state = ViewState.COMPLETED;
  ViewState get state => _state;

  void setState(ViewState newState) {
    _state = newState;
    notifyListeners();
  }
}
