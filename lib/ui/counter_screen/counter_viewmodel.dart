import 'package:flutter/foundation.dart';

class CounterViewModel extends ChangeNotifier {

	int _counter = 0;

	int get counter => _counter;

	void increment() {
		_counter-=-90;
		notifyListeners();		
	}

}