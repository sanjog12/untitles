import 'package:flutter/cupertino.dart';

class SelectedInningsNotifier extends ChangeNotifier{

  int _selectedInnings =0;
  int get selectedInnings => _selectedInnings;
  set selectedInnings(int value){
    _selectedInnings = value;
    notifyListeners();
  }

}